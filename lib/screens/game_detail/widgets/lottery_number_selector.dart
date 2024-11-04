import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:dart_pusher_channels/dart_pusher_channels.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_app/data/models/TicketLockedEventResponse.dart';

class LotteryNumberSelector extends StatefulWidget {
  final Color selectedColor;

  const LotteryNumberSelector({super.key, required this.selectedColor});

  @override
  LotteryNumberSelectorState createState() => LotteryNumberSelectorState();
}

class LotteryNumberSelectorState extends State<LotteryNumberSelector> {
  final List<int> takenNumbers = [5, 18, 28, 50];
  final Set<int> selectedNumbers = {};

  TicketLockedResponse handleEvent(String jsonString) {
    try {
      // Decode the JSON string into a Map
      Map<String, dynamic> jsonData = jsonDecode(jsonString);

      // Create a TicketLockedResponse instance from the JSON data
      TicketLockedResponse response = TicketLockedResponse.fromJson(jsonData);

      // Now you can access the parsed data
      print("Ticket ID: ${response.ticket.id}");
      print("User Name: ${response.user.fullName}");
      print("Game Name: ${response.game.name}");
      return response;
    } catch (e) {
      print("Error parsing JSON: $e");
      rethrow;
    }
  }

  void connectToPusher() async {
    try {
      PusherChannelsPackageLogger.enableLogs();
      const hostOptions = PusherChannelsOptions.fromHost(
        scheme: 'ws', // wss for ssl
        host: '192.168.3.102',
        key: 'app-key', // default is app-key, change in production!
        shouldSupplyMetadataQueries: true,
        metadata: PusherChannelsOptionsMetadata.byDefault(),
        port: 6001,
      );

      final client = PusherChannelsClient.websocket(
          options: hostOptions,
          connectionErrorHandler: (exception, trace, refresh) async {
            print(exception);
            refresh();
          });

      final ticketLockedChannel =
          client.publicChannel('ticket-lock'); // Corrected channel name

      final StreamSubscription connectionSubs =
          client.onConnectionEstablished.listen((_) {
        ticketLockedChannel.subscribeIfNotUnsubscribed();
      });

      ticketLockedChannel.whenSubscriptionSucceeded().listen((_) {
        print("Subscription succeded to the channel ");
      });

      // unawaited(client.connect());
      await client.connect();

      // Handle incoming event
      StreamSubscription<ChannelReadEvent> somePrivateChannelEventSubs =
          ticketLockedChannel.bind('ticket.locked').listen((event) {
        final data = handleEvent(event.data);
        Fluttertoast.showToast(
            msg:
                "${data.user.fullName} has bought a ticket ${data.ticket.ticketNumber} in the game ${data.game.name} ",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 5,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
        print(event.data);
        print(event.channel.name);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    connectToPusher();
    super.initState();
  }

  // Select one random number
  void selectRandomNumber() {
    Random random = Random();
    int randomNumber;

    do {
      randomNumber = random.nextInt(100) + 1;
    } while (takenNumbers.contains(randomNumber) ||
        selectedNumbers.contains(randomNumber));

    if (selectedNumbers.length < 5) {
      setState(() {
        selectedNumbers.add(randomNumber);
      });
    }
  }

  // Remove a number from the selected list
  void removeSelectedNumber(int number) {
    setState(() {
      selectedNumbers.remove(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('select_lottery_number').tr(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Display selected numbers at the top with remove buttons
            Wrap(
              alignment: WrapAlignment.end,
              spacing: 10,
              children: selectedNumbers
                  .map(
                    (number) => Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 60.h,
                          height: 60.h,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.06),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: Text(
                              number.toString(),
                              style: TextStyle(
                                  color: widget.selectedColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                        // "Minus" button to remove the selected number
                        Positioned(
                          top: -5,
                          right: -5,
                          child: GestureDetector(
                            onTap: () => removeSelectedNumber(number),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.withOpacity(0.7),
                              ),
                              padding: EdgeInsets.all(4.w),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "select_upto_ten",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(.7)),
                ).tr(),
                const SizedBox(height: 10),
                // Random Button
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 100.w,
                    child: ElevatedButton(
                      onPressed: () {
                        if (selectedNumbers.length < 5) {
                          selectRandomNumber();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 2,
                                  color:
                                      widget.selectedColor.computeLuminance() >
                                              .5
                                          ? Colors.black
                                          : Colors.white),
                              borderRadius: BorderRadius.circular(12.r)),
                          backgroundColor: widget.selectedColor,
                          foregroundColor:
                              widget.selectedColor.computeLuminance() > .5
                                  ? Colors.black
                                  : Colors.white),
                      child: Text(
                        "random",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ).tr(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Number grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // 5 columns
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: 100, // numbers 1-100
                itemBuilder: (context, index) {
                  final number = index + 1;
                  final isTaken = takenNumbers.contains(number);
                  final isSelected = selectedNumbers.contains(number);

                  return GestureDetector(
                    onTap: () {
                      if (!isTaken) {
                        setState(() {
                          if (isSelected) {
                            selectedNumbers.remove(number);
                          } else if (selectedNumbers.length < 5) {
                            selectedNumbers.add(number);
                          }
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? widget.selectedColor : Colors.white,
                        border: Border.all(
                          color: isTaken
                              ? Colors.grey // Grey border for taken numbers
                              : widget.selectedColor,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 1,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          number.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isSelected
                                ? Colors.white
                                : isTaken
                                    ? Colors.grey
                                    : Colors.black87,
                            decoration: isTaken
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // "Get Ticket" button
            SizedBox(
              width: double.maxFinite,
              height: 55.h,
              child: ElevatedButton(
                onPressed: selectedNumbers.isNotEmpty ? () {} : null,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: widget.selectedColor.computeLuminance() > .5
                                ? Colors.black
                                : Colors.white),
                        borderRadius: BorderRadius.circular(12.r)),
                    backgroundColor: widget.selectedColor,
                    foregroundColor:
                        widget.selectedColor.computeLuminance() > .5
                            ? Colors.black
                            : Colors.white),
                child: Text(
                  "get_ticket",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                ).tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_unleash/model/grocery_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// class GroceryTile extends StatelessWidget {
//   final GroceryItem groceryItem;
//
//   //?onComplete is a callback handler that lets you know whether the user toggled the
//   //?checkbox on or off.
//   final Function(bool?)? onComplete;
//   final TextDecoration? textDecoration;
//
//   GroceryTile({required this.groceryItem, this.onComplete, super.key})
//       : textDecoration = groceryItem.isComplete
//             ? TextDecoration.lineThrough
//             : TextDecoration.none;
//
//   Widget buildImportance() {
//     if (groceryItem.importance == Importance.low) {
//       return Text(
//         'Low',
//         style: GoogleFonts.lato(decoration: textDecoration),
//       );
//     } else if (groceryItem.importance == Importance.medium) {
//       return Text(
//         'Medium',
//         style: GoogleFonts.lato(
//             decoration: textDecoration, fontWeight: FontWeight.w800),
//       );
//     } else if (groceryItem.importance == Importance.high) {
//       return Text(
//         'High',
//         style: GoogleFonts.lato(
//             color: Colors.red,
//             fontWeight: FontWeight.w900,
//             decoration: textDecoration),
//       );
//     } else {
//       throw Exception('Importance field does not exist');
//     }
//   }
//
//   Widget buildDate() {
//     final dateFormatter = DateFormat('MMMM dd h:mm a');
//     final dateString = dateFormatter.format(groceryItem.dateTime);
//     return Text(
//       dateString,
//       style: TextStyle(decoration: textDecoration),
//     );
//   }
//
//   Widget buildCheckBox() {
//     return Checkbox(
//       value: groceryItem.isComplete,
//       onChanged: onComplete,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//          Row(
//            children: [
//              Container(width: 5, color: groceryItem.color),
//              const SizedBox(width: 16),
//              Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: [
//                  Text(
//                    groceryItem.name,
//                    style: GoogleFonts.lato(
//                      fontSize: 21,
//                      decoration: textDecoration,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                  const SizedBox(height: 4.0),
//                  buildDate(),
//                  const SizedBox(height: 4),
//                  buildImportance(),
//                ],
//              ),
//            ],
//          ),
//           Row(
//             children: [
//               Text(
//                 groceryItem.quantity.toString(),
//                 style:
//                     GoogleFonts.lato(fontSize: 21, decoration: textDecoration),
//               ),
//               buildCheckBox(),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }


class GroceryTile extends ConsumerStatefulWidget {
  final GroceryItem? groceryItem;

  final Function(bool?)? onComplete;

  final TextDecoration? textDecoration;

  GroceryTile({Key? key, this.groceryItem, this.onComplete})
      : textDecoration =
  groceryItem!.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  @override
  ConsumerState<GroceryTile> createState() => _GroceryTileState();
}

class _GroceryTileState extends ConsumerState<GroceryTile> {
  @override
  Widget build(BuildContext context) {
    Widget buildImportance() {
      if (widget.groceryItem!.importance == Importance.low) {
        return Text(
          'Low',
          style: GoogleFonts.lato(decoration: widget.textDecoration),
        );
      } else if (widget.groceryItem!.importance == Importance.medium) {
        return Text(
          'Medium',
          style: GoogleFonts.lato(
            decoration: widget.textDecoration,
            fontWeight: FontWeight.w800,
          ),
        );
      } else if (widget.groceryItem!.importance == Importance.high) {
        return Text(
          'High',
          style: GoogleFonts.lato(
            decoration: widget.textDecoration,
            fontWeight: FontWeight.w900,
          ),
        );
      }
      throw Exception('This Importance type does not exist');
    }

    Widget buildDate() {
      final dateFormatter = DateFormat('MMMM dd h:mm a');
      final dateString = dateFormatter.format(widget.groceryItem!.dateTime);
      return Text(
        dateString,
        style: TextStyle(decoration: widget.textDecoration),
      );
    }

    Widget buildCheckBox() {
      return Checkbox(
        value: widget.groceryItem!.isComplete,
        onChanged: widget.onComplete,
      );
    }

    return Container(
      height: 100,
      decoration:  BoxDecoration(
        color: widget.groceryItem?.color,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 5.0,
                color: widget.groceryItem!.color,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.groceryItem!.name,
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      decoration: widget.textDecoration,
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  buildDate(),
                  const SizedBox(height: 4.0),
                  buildImportance(),
                ],
              ),
            ],
          ),
          const SizedBox(width: 16.0),
          Row(
            children: [
              Text(
                widget.groceryItem!.quantity.toString(),
                style: GoogleFonts.lato(
                    decoration: widget.textDecoration, fontSize: 21.0),
              ),
              buildCheckBox(),
            ],
          ),
        ],
      ),
    );
  }
}
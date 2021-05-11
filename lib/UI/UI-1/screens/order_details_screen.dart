import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/widgets/cart_product_tile.dart';
import 'package:flutter_ui/UI/UI-1/widgets/my_button.dart';

class OrderDetailsScreen extends StatelessWidget {
  static const id = 'order_details_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: true,
          title: Text(
            "Order Details",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            EasyContainer(
              child: _buildTimeline(),
              color: Colors.grey[200],
              elevation: 0,
              borderRadius: 15,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CartProductTile(AppData.products[index]);
              },
              itemCount: 3,
            ),
            const Divider(thickness: 0.75),
            const SizedBox(height: 10),
            _info(title: "Item Total", value: "\$17.95"),
            const SizedBox(height: 10),
            _info(title: "Discount", value: "-\$2.00"),
            const SizedBox(height: 10),
            _info(
              title: "Delivery Fees",
              value: "Free",
              trailingColor: Colors.amber,
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 0.75),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "\$15.95",
                  style: TextStyle(fontSize: 35, color: Colors.black87),
                ),
              ],
            ),
            const SizedBox(height: 10),
            MyButton(title: "Track Order", onTap: () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeline() {
    final _timeLineStages = AppData.orderTrackingTimeLineStages;
    final _completedStageIndex = _timeLineStages.length - 1;
    final _selectedColor = Colors.amber;
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      children: [
        for (int i = 0; i < _timeLineStages.length; i++)
          TimelineTile(
            isFirst: i == 0,
            isLast: i == _timeLineStages.length - 1,
            beforeLineStyle: LineStyle(
              color: _completedStageIndex >= i
                  ? _selectedColor.withOpacity(0.5)
                  : Colors.grey,
            ),
            afterLineStyle: LineStyle(
              color: _completedStageIndex <= i
                  ? Colors.grey
                  : _selectedColor.withOpacity(0.5),
            ),
            indicatorStyle: IndicatorStyle(
              height: 50,
              width: 50,
              indicator: Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundColor:
                      _completedStageIndex < i ? Colors.grey : _selectedColor,
                ),
              ),
            ),
            endChild: ListTile(
              title: Text(
                _timeLineStages[i]['title']!,
                style: TextStyle(color: Colors.grey[700]),
              ),
              subtitle: Text(
                _timeLineStages[i]['subtitle']!,
                style: TextStyle(fontSize: 22.5, color: Colors.black),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
      ],
    );
  }

  Widget _info({
    required String title,
    required String value,
    Color trailingColor = Colors.black,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          value,
          style: TextStyle(
            color: trailingColor,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

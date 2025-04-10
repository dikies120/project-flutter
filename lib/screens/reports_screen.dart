import 'package:flutter/material.dart';
// import '../widgets/reports_tab_bar.dart';
import '../widgets/sales_summary_card.dart';
import '../widgets/custom_bottom_nav.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF030F27),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // ✅ Tab Bar Section
                // Container(
                //   margin: const EdgeInsets.only(top: 4),
                //   padding: const EdgeInsets.symmetric(horizontal: 31),
                //   child: const ReportsTabBar(),
                // ),

                // ✅ Today's Sale Label
                Container(
                  padding: const EdgeInsets.only(left: 46, top: 49),
                  child: const Text(
                    "TODAY'S SALE",
                    style: TextStyle(
                      color: Color(0xFFD3BDB0),
                      fontSize: 14,
                      fontFamily: 'Abel',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                // ✅ Sales Summary Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left column - Today's sale amount
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.currency_rupee,
                                    color: Color(0xFFD3BDB0),
                                    size: 24,
                                  ),
                                ),
                                const Text(
                                  '\$20.9 K',
                                  style: TextStyle(
                                    color: Color(0xFFD3BDB0),
                                    fontSize: 36,
                                    fontFamily: 'Abel',
                                    fontWeight: FontWeight.w400,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 28),
                            const Text(
                              '\$6,600 is today\'s highest sale',
                              style: TextStyle(
                                color: Color(0xFFD3BDB0),
                                fontSize: 14,
                                fontFamily: 'Abel',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Right column - Top selling item
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text(
                                '26k',
                                style: TextStyle(
                                  color: Color(0xFFD3BDB0),
                                  fontSize: 36,
                                  fontFamily: 'Abel',
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 35, top: 7),
                              child: Text(
                                'Rolex is top selling beverage.',
                                style: TextStyle(
                                  color: Color(0xFFD3BDB0),
                                  fontSize: 14,
                                  fontFamily: 'Abel',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ✅ Last Week Sale and Chart Section
                Container(
                  margin: const EdgeInsets.only(top: 46),
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left column - Last week sale card
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SalesSummaryCard(
                              title: 'Last week Sale',
                              amount: '\$14.2 K',
                              description: 'Approx 24 customers\narrived',
                              secondaryAmount: '20k',
                              secondaryDescription: 'Rolex is top selling beverage.',
                              isSecondaryRight: true,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 25),

                      // Right column - Chart and total cost
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 177,
                              height: 157,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: const Center(
                                child: Text(
                                  'Chart Placeholder',
                                  style: TextStyle(
                                    color: Color(0xFFD3BDB0),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 27),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'Total Cost',
                                  style: TextStyle(
                                    color: Color(0xFFA67B5B),
                                    fontSize: 10,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.45,
                                  ),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  '\$222,999',
                                  style: TextStyle(
                                    color: Color(0xFFD3BDB0),
                                    fontSize: 16,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ✅ Bottom Chart
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 52),
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  height: 228,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.2),
                    ),
                    child: const Center(
                      child: Text(
                        'Chart Placeholder',
                        style: TextStyle(
                          color: Color(0xFFD3BDB0),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // ✅ Tambahkan Custom Bottom Navigation
     bottomNavigationBar: CustomBottomNavigation(
        currentIndex: 3, // Reports ada di index ke-3
        onTap: (index) {
          // Navigasi akan otomatis ditangani oleh CustomBottomNavigation
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../constants/app_colors.dart';
import '../widgets/stat_card.dart';
import '../widgets/custom_bottom_nav.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top App Bar
            Container(
              color: AppColors.secondaryBackground,
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Dashboard',
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search, color: AppColors.textWhite),
                        onPressed: () {},
                      ),
                      const CircleAvatar(
                        backgroundColor: AppColors.primaryBlue,
                        child: Icon(Icons.person, color: AppColors.textWhite),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Dashboard Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // Stats Cards
                    Row(
                      children: [
                        StatCard(title: 'Total Sales', value: '\$209K', color: Colors.blue),
                        const SizedBox(width: 15),
                        StatCard(title: 'Total Orders', value: '26K', color: Colors.green),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        StatCard(title: 'Total Revenue', value: '\$142K', color: Colors.purple),
                        const SizedBox(width: 15),
                        StatCard(title: 'Stocks', value: '20K', color: Colors.orange),
                      ],
                    ),

                    // Sales Chart
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondaryBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sales Overview',
                            style: TextStyle(
                              color: AppColors.textWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            height: 200,
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(show: false),
                                titlesData: FlTitlesData(show: false),
                                borderData: FlBorderData(show: false),
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 3),
                                      FlSpot(1, 2),
                                      FlSpot(2, 5),
                                      FlSpot(3, 3.1),
                                      FlSpot(4, 4),
                                      FlSpot(5, 3),
                                      FlSpot(6, 4.5),
                                    ],
                                    isCurved: true,
                                    color: AppColors.primaryBlue,
                                    barWidth: 4,
                                    belowBarData: BarAreaData(
                                      show: true,
                                      color: AppColors.primaryBlue.withOpacity(0.3),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
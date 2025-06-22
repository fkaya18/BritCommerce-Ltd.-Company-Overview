# BritCommerce-Ltd.-Company-Overview

# Project Background
BritCommerce Ltd. is a fictional e-commerce marketplace company based in London, United Kingdom, serving as a comprehensive platform for diverse consumer needs. Between January 2022 and December 2024, the company recorded 98,723 orders from 43,199 unique customers, featuring 30,000 distinct products organized across 15 different product lines with global reach but strongest market presence in the UK. The platform accommodates diverse customer preferences through multiple payment methods including credit cards, debit cards, PayPal, mobile payments, cryptocurrency, and cash on delivery. This dataset contains comprehensive commercial data including customer demographics (age, gender, location, and segments), product specifications (costs, pricing, and profit margins), and detailed transaction information, enabling sophisticated CRM analysis and strategic marketing insights. The analysis examines BritCommerce's three-year performance trajectory to provide critical insights into operational efficiency, market positioning, and growth patterns that will contribute to the company's continued development in the competitive e-commerce landscape.

The report provides evaluations and guidance on the following major topics:

- 👥 **Customer Demographics and Segmentation**: A comprehensive analysis of customer demographics and segments, revealing revenue contributions, spending patterns, and behavioral differences across age groups, genders, and locations.

- 📦 **Product Performance**: An analysis of BritCommerce's product portfolio, focusing on category-level insights such as total products, units sold, revenue, and profit distribution. It highlights the top-selling products, average profit margins across categories, and annual revenue trends, enabling performance benchmarking and strategic product management.

- 📊 **Sales Trends Analysis**: Provides a comprehensive overview of revenue, profit, and order volume patterns over time, highlighting monthly and yearly performance fluctuations along with key growth indicators such as YoY, MoM, profit margin, and payment method preferences.


# 🧩 Schema Description
The SQL code establishes a comprehensive database system for BritCommerceLtd with three interconnected tables, implementing advanced customer segmentation through CTEs and automated profit calculations. The implementation includes robust data validation protocols and enriches the dataset with analytical dimensions such as customer segments, age categories, and profitability metrics to enable sophisticated business intelligence and marketing analytics.

You can access the SQL codes used to accomplish all this [here](BritCommerceLtd.sql).

BritCommerce's database follows a classic e-commerce structure with three core tables: products (storing product details, costs, and pricing), customers (containing demographic and segmentation data), and sales (capturing transaction records). The sales table serves as the central hub, linking products and customers through foreign key relationships while storing essential transaction data including quantities, payments, and calculated profits.

![Database Schema](images/database_schema.png)


# Executive Summary

## Overview of Findings

BritCommerce demonstrates strong overall performance with 98,723 total orders generating $221.59M in revenue and $50.62M in profit over the three-year period, maintaining a healthy 22.85% profit margin. However, the company faces significant challenges with a declining growth trajectory, showing an 8.55% year-over-year decrease in 2024 despite positive month-over-month growth of 18.14%. Revenue peaked in 2023 ($80.16M) before declining to $73.31M in 2024, indicating the need for strategic intervention to reverse the negative trend and capitalize on positive monthly momentum for sustainable long-term growth.

You can see one of the related pages from dashboard. In order to download the full interactive dashboard click [here](BritCommerceLtd_dashboard.pbix).

<p align="center">
  <img src="images/sales.png" alt="Executive Summary" width="400"/>
  <img src="images/trends.png" alt="Sales Summary" width="400"/>
</p>


# Customer Demographics and Segmentation

* **Gender Distribution:** The customer base shows a female preference with 55% female customers (23,760) compared to 45% male customers (19,439), indicating strong appeal to female demographics while maintaining substantial male market penetration.

* **Age Demographics:** Well-distributed age profile with 35-96% representing the largest segment (15.54K customers), followed by 18-25 age group (10.38K customers), demonstrating broad generational appeal across BritCommerce's platform.

* **Geographic Market Performance:** Strong UK dominance with significant European presence in France, Germany, Italy, and Turkey, showcasing successful international expansion beyond the domestic market.

* **Customer Segmentation Success:** Value Seekers lead with 11,798 customers, followed by High Spenders (10,138) and Loyal customers (6,488), indicating effective segmentation strategy with clear customer lifecycle progression.

* **Revenue by Segment:** High Spenders generate the highest revenue ($97.42M) despite being second in volume, followed by Loyal customers ($33.54M), demonstrating successful premium customer cultivation and monetization.

* **Top Customer Profile:** CUST21904, a 33-year-old female with $34.93K spend across 12 orders and 96 products, exemplifies high-value customer potential with $7.88K profit contribution.

* **Gender-Based Revenue Patterns:** Male customers contribute higher spending in premium segments while female customers show consistent engagement across all tiers, requiring tailored marketing approaches for different demographic behaviors.

![Customers](images/customers.png)


# Product Performance

* **Product Portfolio Scale:** BritCommerce maintains an extensive catalog of 30,000 products across 18 categories, demonstrating comprehensive market coverage and diverse product offering to meet varied customer needs.

* **Category Performance Leaders:** Toys dominate sales performance with the highest revenue ($45.53M), followed by Home&Kitchen ($37.98M) and Health&Fitness ($24.53M), indicating strong consumer demand in lifestyle and entertainment categories.

* **Profit Margin and Product Distribution:** Gaming leads profitability with 30.19% average profit percentage despite having fewer products, while Toys maintains the largest product count with competitive 29.65% profit percentage. Categories like Electronics and Automotive show strong product variety with consistent profit percentage around 29-30%, demonstrating effective pricing strategies across diverse product portfolios.

* **Top Product Success:** Product_6028_WEWBO (Automotive category) leads individual product performance with 244 units sold, generating $16.38K revenue and $2.65K profit at 19.32% profit margin, showcasing strong performance in the automotive segment.

* **Best Seller Diversity:** Top 10 products span multiple categories including Automotive, Toys, Electronics, Home&Kitchen, Music, and Health&Fitness, indicating balanced demand across different product segments rather than concentration in single categories.

* **Units Sold Distribution:** Toys, Gardening, Electronics, and Automotive stand out as the highest volume categories, while Home&Kitchen and Health&Fitness maintain a strong presence, reflecting diverse customer purchasing patterns.

* **Revenue Growth Patterns:** Annual revenue by category shows Toys maintaining consistent leadership across 2022-2024, while categories like Gardening and Electronics demonstrate steady performance, indicating stable market positioning and customer loyalty.

![Products](images/products.png)


# Sales Trends

* **Overall Performance Metrics:** BritCommerce achieved strong overall results with 98,723 total orders generating $221.59M in revenue and $50.62M in profit, maintaining a healthy 22.85% profit margin with an average order value of $2.24K across the three-year period.

* **Annual Growth Trajectory:** Revenue peaked in 2023 at $80.16M before declining to $73.31M in 2024, while profit followed a similar pattern from $18.31M (2023) to $16.75M (2024), indicating challenges in sustaining growth momentum despite initial strong performance from 2022's $68.12M revenue baseline.

* **Monthly Seasonality Patterns:** Monthly revenue shows distinct seasonal trends with December leading at $22M followed by strong performance in May ($21M), October ($20M), and August ($20M), while February shows the lowest performance at $14M. Profit margins remain consistent with December generating the highest profit at $5.0M and February the lowest at $3.3M, indicating strong year-end shopping behaviors and winter seasonal variations.

* **Weekly Order Distribution:** Tuesday emerges as the peak sales day with 18.9K orders, followed by Monday (17.5K) and Wednesday (13.8K), while weekends show lower activity (Saturday: 12.5K, Sunday: 7.5K), indicating B2B or weekday-focused customer behavior patterns.

* **Payment Method Analysis:** Credit cards dominate with 39,440 orders ($88.5M revenue), followed by mobile payments (9,823 orders, $22.0M) and PayPal (9,848 orders, $22.1M), while emerging payment methods like cryptocurrency show growing adoption with 5,026 orders generating $11.3M revenue.

* **Current Growth Challenges:** Despite positive month-over-month growth of 18.14%, the company faces significant year-over-year decline of -8.55%, with detailed monthly data showing consistent downward trends in 2024 across orders, revenue, and profit metrics compared to 2023 performance.

* **Revenue Forecasting and Trends:** The 12-month revenue forecast suggests continued volatility with potential recovery into 2025, while moving averages indicate revenue stabilization around $200K monthly levels, suggesting the need for strategic interventions to reverse the declining trend and capitalize on seasonal opportunities.

<p align="center">
  <img src="images/sales.png" alt="Executive Summary" width="400"/>
  <img src="images/trends.png" alt="Sales Summary" width="400"/>
</p>


# Recommendations

* **Address Year-over-Year Decline:** Implement immediate strategic interventions to reverse the -8.55% YoY decline by conducting comprehensive market analysis, competitor benchmarking, and customer retention programs while leveraging the positive 18.14% month-over-month growth momentum to build sustainable recovery strategies.

* **Optimize Seasonal Marketing Campaigns:** Capitalize on strong December ($22M) and May ($21M) performance patterns by developing targeted seasonal campaigns, pre-loading inventory for peak months, and creating special promotions during low-performance periods like February ($14M) to smooth revenue volatility throughout the year.

* **Enhance High Spender Segment Focus:** Given that High Spenders generate $97.42M revenue with only 10,138 customers, develop premium loyalty programs, personalized shopping experiences, and exclusive product offerings to increase this segment's size and spending frequency while maintaining their high-value contribution.

* **Expand Gaming Category Presence:** With Gaming showing the highest profit margin at 30.19% despite fewer products, significantly expand this category's product portfolio to capture more market share and leverage its superior profitability compared to other categories.

* **Strengthen Female Customer Engagement:** Since 55% of customers are female and show consistent engagement across all segments, develop female-focused marketing campaigns, product curation, and user experience improvements while creating targeted approaches for male customers who demonstrate higher premium segment spending.

* **Optimize Payment Method Strategy:** While credit cards dominate ($88.5M revenue), actively promote and incentivize emerging payment methods like cryptocurrency ($11.3M from 5,026 orders) and mobile payments to capture tech-savvy customers and reduce transaction fees.

* **Leverage Weekday Sales Patterns:** With Tuesday showing peak performance (18.9K orders), implement weekday-specific promotional strategies, optimize inventory management for Monday-Wednesday peak periods, and develop weekend engagement campaigns to boost Saturday-Sunday sales performance.

* **International Market Expansion:** Build upon strong European presence in France, Germany, and Italy by developing localized marketing strategies, currency options, and region-specific product offerings to increase market penetration and reduce dependence on UK market performance.

* **Cross-Category Product Bundling:** With top sellers spanning Automotive, Toys, Electronics, and Home&Kitchen, create strategic product bundles across categories to increase average order value from the current $2.24K and encourage customers to explore diverse product segments.

* **Customer Journey Optimization:** Analyze the progression from Value Seekers (11,798 customers) to High Spenders (10,138 customers) to develop targeted upgrade campaigns, loyalty rewards, and personalized recommendations that accelerate customer lifecycle advancement and increase lifetime value.

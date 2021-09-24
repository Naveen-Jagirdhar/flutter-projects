import 'package:flutter/cupertino.dart';
import 'package:tax_app/utils/sub_tax_saving.dart';
import 'package:tax_app/utils/tips.dart';
import '../colors_constant.dart';
import 'apps.dart';
import 'faq.dart';

List<Apps> calculationApps = [
  Apps(CupertinoIcons.home, 'HRA\nCalculator', lightGreen, 'hra'),
  Apps(CupertinoIcons.money_dollar_circle, 'Income tax\nCalculator', lightBlue,
      'income'),
  Apps(CupertinoIcons.doc_plaintext, 'Rental\nReceipt', teal, 'rent'),
];

List<Apps> tipApps = [
  Apps(CupertinoIcons.graph_circle, '80C', lightGreen, '80C'),
  Apps(CupertinoIcons.briefcase, '80D', lightBlue, '80D'),
  Apps(CupertinoIcons.person_2_alt, '80CCD', amber, '80CCD'),
  Apps(CupertinoIcons.rectangle_grid_2x2, 'Tax Tips', teal, 'tips'),
];

List<TaxSavingTips> tips = [
  TaxSavingTips(
    'Zero risk investment options',
    [
      SubTaxSaving(
        'Tax Saving Fixed Deposits',
        'Lowest return across tax saving products.Post inflation,returns are negative',
        [
          FrequentQsn('Risk', 'Zero'),
          FrequentQsn('Return', 'Low'),
          FrequentQsn('Lock-in', '5 years'),
        ],
      ),
      SubTaxSaving(
        'Public Provident Fund',
        'Govt Scheme with risk-free & tax-fee returns',
        [
          FrequentQsn('Risk', 'Zero'),
          FrequentQsn('Return', '7.1% p.a'),
          FrequentQsn('Lock-in', '15 years'),
        ],
      ),
      SubTaxSaving(
        'National Saving Certificate',
        'Govt backed Scheme with offline investments via post office and paper based withdrawal',
        [
          FrequentQsn('Risk', 'Zero'),
          FrequentQsn('Return', '6.8% p.a'),
          FrequentQsn('Lock-in', '5 years'),
        ],
      ),
    ],
  ),
  TaxSavingTips(
    'Life Insurance Benefits',
    [
      SubTaxSaving(
        'Term Life Insurance',
        'Provides financial protection to your family at affordable rates',
        [
          FrequentQsn('Risk', 'Low'),
          FrequentQsn('Return', 'Zero'),
          FrequentQsn('Lock-in', 'Until death'),
        ],
      ),
      SubTaxSaving(
        'Unit Linked Insurance Plan',
        'Insurance cum investment instrument for wealth creation along with life cover',
        [
          FrequentQsn('Risk', 'Moderate'),
          FrequentQsn('Return', '10-12% p.a'),
          FrequentQsn('Lock-in', '5 years'),
        ],
      ),
    ],
  ),
  TaxSavingTips(
    'Home loan benefits',
    [
      SubTaxSaving(
        'Home Loan',
        'Claim benefit on home loan repayment on both self-occupied and let-out properties',
        []
      ),
    ],
  ),
  TaxSavingTips(
    'School fees benefits',
    [
      SubTaxSaving(
        'School Fees',
        "Claim benefit on your child's tution fees",
        [],
      ),
    ],
  ),
  TaxSavingTips(
    "Secure your daughter's future",
    [
      SubTaxSaving(
        'Sukanya Samriddhi Yojana',
        "SSY has exempt-exempt-exempt(EEE) status.The maturity benefits are non taxable",
        [
          FrequentQsn('Risk', 'Zero'),
          FrequentQsn('Return', '7.6 % p.a.'),
          FrequentQsn('Lock-in', '12-21 yrs'),
        ],
      ),
    ],
  ),
];

List<FrequentQsn> qstns = [
  FrequentQsn('My employer has deducted tax , Do I need to file IT returns?',
      'Yes, you have to file your returns.It is mandatory to do so.'),
  FrequentQsn('I have no tax due,Do I need to file IT returns?',
      'Yes, you should still file your income tax returns.'),
  FrequentQsn(
      'What documents are required to file IT returns?',
      "You need your form-16 for reference.If you don't have a form-16,"
          "you can use salary slip,form 26AS or computation report to file you return."),
  FrequentQsn(
      "File with form-26AS,if you don't have form-16",
      'You can manually enter the income and the deduction data or upload form-26AS.'
          'On the CPC website,click view form-26AS and select the Assessment Year and view as HTML. '
          'Then use Export as PDF to download the Form 26AS.'),
];

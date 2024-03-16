@extends('layouts.base')

@inject('content', 'App\Http\Controllers\FrontController')
@section('content')
<!-- =============================Wrapper========================================================== -->
<section class="container-fluid bg-contact-us">
    <div class="row">
      <div class="col-6 abt-us-txt">
        <h2 class="p-20 white"> Live Trading</h2>
      </div>

 
    </div>

    <!-- the body section that contain the text =============== -->
    
  </section>
   <div class="container abt-p-txt">
    <div class="row">

        <div class="col-md-12">
        <!-- TradingView Widget BEGIN -->
          <div class="tradingview-widget-container">
            <div class="tradingview-widget-container__widget"></div>
           
            <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" async>
            {
            "symbols": [
              {
                "proName": "FX_IDC:EURUSD",
                "title": "EUR/USD"
              },
              {
                "proName": "BITSTAMP:BTCUSD",
                "title": "BTC/USD"
              },
              {
                "proName": "BITSTAMP:ETHUSD",
                "title": "ETH/USD"
              }
            ],
            "colorTheme": "dark",
            "isTransparent": false,
            "displayMode": "adaptive",
            "locale": "en"
          }
            </script>
          </div>
          <!-- TradingView Widget END -->
      </div>
      <div class="col-md-12">

            <!-- TradingView Widget BEGIN -->
      <div class="tradingview-widget-container">
        <div class="tradingview-widget-container__widget"></div>
        <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/" rel="noopener" target="_blank"><span class="blue-text">Market Data</span></a> by TradingView</div>
        <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-market-overview.js" async>
        {
        "colorTheme": "dark",
        "dateRange": "12m",
        "showChart": true,
        "locale": "en",
        "largeChartUrl": "",
        "isTransparent": true,
        "width": "100%",
        "height": "500",
        "plotLineColorGrowing": "rgba(25, 118, 210, 1)",
        "plotLineColorFalling": "rgba(25, 118, 210, 1)",
        "gridLineColor": "rgba(42, 46, 57, 1)",
        "scaleFontColor": "rgba(120, 123, 134, 1)",
        "belowLineFillColorGrowing": "rgba(33, 150, 243, 0.12)",
        "belowLineFillColorFalling": "rgba(33, 150, 243, 0.12)",
        "symbolActiveColor": "rgba(33, 150, 243, 0.12)",
        "tabs": [
          {
            "title": "Indices",
            "symbols": [
              {
                "s": "OANDA:SPX500USD",
                "d": "S&P 500"
              },
              {
                "s": "OANDA:NAS100USD",
                "d": "Nasdaq 100"
              },
              {
                "s": "FOREXCOM:DJI",
                "d": "Dow 30"
              },
              {
                "s": "INDEX:NKY",
                "d": "Nikkei 225"
              },
              {
                "s": "INDEX:DEU30",
                "d": "DAX Index"
              },
              {
                "s": "OANDA:UK100GBP",
                "d": "FTSE 100"
              }
            ],
            "originalTitle": "Indices"
          },
          {
            "title": "Commodities",
            "symbols": [
              {
                "s": "CME_MINI:ES1!",
                "d": "E-Mini S&P"
              },
              {
                "s": "CME:6E1!",
                "d": "Euro"
              },
              {
                "s": "COMEX:GC1!",
                "d": "Gold"
              },
              {
                "s": "NYMEX:CL1!",
                "d": "Crude Oil"
              },
              {
                "s": "NYMEX:NG1!",
                "d": "Natural Gas"
              },
              {
                "s": "CBOT:ZC1!",
                "d": "Corn"
              }
            ],
            "originalTitle": "Commodities"
          },
          {
            "title": "Bonds",
            "symbols": [
              {
                "s": "CME:GE1!",
                "d": "Eurodollar"
              },
              {
                "s": "CBOT:ZB1!",
                "d": "T-Bond"
              },
              {
                "s": "CBOT:UB1!",
                "d": "Ultra T-Bond"
              },
              {
                "s": "EUREX:FGBL1!",
                "d": "Euro Bund"
              },
              {
                "s": "EUREX:FBTP1!",
                "d": "Euro BTP"
              },
              {
                "s": "EUREX:FGBM1!",
                "d": "Euro BOBL"
              }
            ],
            "originalTitle": "Bonds"
          },
          {
            "title": "Forex",
            "symbols": [
              {
                "s": "FX:EURUSD"
              },
              {
                "s": "FX:GBPUSD"
              },
              {
                "s": "FX:USDJPY"
              },
              {
                "s": "FX:USDCHF"
              },
              {
                "s": "FX:AUDUSD"
              },
              {
                "s": "FX:USDCAD"
              }
            ],
            "originalTitle": "Forex"
          }
        ]
      }
        </script>
      </div>
      <!-- TradingView Widget END -->

</div>

      </div>
    
      
    </div>
    <div style="padding: 20px;"></div>
    @endsection
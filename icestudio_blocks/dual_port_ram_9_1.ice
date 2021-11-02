{
  "version": "1.2",
  "package": {
    "name": "dual_port_ram",
    "version": "",
    "description": "uses block ram with separate read/write clock",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "ulx3s-85f",
    "graph": {
      "blocks": [
        {
          "id": "f9cae3c2-80d3-4173-aa41-ce7097ad51be",
          "type": "basic.input",
          "data": {
            "name": "clk_r",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 224,
            "y": 360
          }
        },
        {
          "id": "48f81890-670a-41ba-8f90-d72d9ab64452",
          "type": "basic.input",
          "data": {
            "name": "clk_w",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 224,
            "y": 416
          }
        },
        {
          "id": "3f2843d0-3cc6-4eaf-b1d6-626734cccc96",
          "type": "basic.input",
          "data": {
            "name": "we",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 224,
            "y": 464
          }
        },
        {
          "id": "9057eea9-313f-43df-ac6d-cd068716d78b",
          "type": "basic.output",
          "data": {
            "name": "dout",
            "range": "[8:0]",
            "pins": [
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1160,
            "y": 488
          }
        },
        {
          "id": "78ac8640-7388-4893-b4a3-59892d19b0be",
          "type": "basic.input",
          "data": {
            "name": "din",
            "range": "[8:0]",
            "pins": [
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 224,
            "y": 512
          }
        },
        {
          "id": "47aaab97-b8a8-483c-97ca-54283b829014",
          "type": "basic.input",
          "data": {
            "name": "addr_a",
            "range": "[10:0]",
            "pins": [
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 224,
            "y": 568
          }
        },
        {
          "id": "ed782a53-4fa4-4068-9742-2ae2bd31114e",
          "type": "basic.input",
          "data": {
            "name": "addr_b",
            "range": "[10:0]",
            "pins": [
              {
                "index": "10",
                "name": "",
                "value": ""
              },
              {
                "index": "9",
                "name": "",
                "value": ""
              },
              {
                "index": "8",
                "name": "",
                "value": ""
              },
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 224,
            "y": 616
          }
        },
        {
          "id": "f46d498c-494a-432c-8021-02c5ebce2c0f",
          "type": "basic.code",
          "data": {
            "code": "\tlocalparam ADDR_WIDTH=11,\r\n\t               DATA_WIDTH=9;\r\n\t\r\n\treg[DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];\r\n\treg[ADDR_WIDTH-1:0] addr_b_q;\r\n\t\r\n\talways @(posedge clk_w) begin\r\n\t\tif(we) ram[addr_a]<=din;\r\n\tend\r\n\talways @(posedge clk_r) begin\r\n\t\taddr_b_q<=addr_b;\t\r\n\tend\r\n\tassign dout=ram[addr_b_q];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk_r"
                },
                {
                  "name": "clk_w"
                },
                {
                  "name": "we"
                },
                {
                  "name": "din",
                  "range": "[8:0]",
                  "size": 9
                },
                {
                  "name": "addr_a",
                  "range": "[10:0]",
                  "size": 11
                },
                {
                  "name": "addr_b",
                  "range": "[10:0]",
                  "size": 11
                }
              ],
              "out": [
                {
                  "name": "dout",
                  "range": "[8:0]",
                  "size": 9
                }
              ]
            }
          },
          "position": {
            "x": 480,
            "y": 368
          },
          "size": {
            "width": 600,
            "height": 304
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f9cae3c2-80d3-4173-aa41-ce7097ad51be",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "clk_r"
          }
        },
        {
          "source": {
            "block": "48f81890-670a-41ba-8f90-d72d9ab64452",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "clk_w"
          }
        },
        {
          "source": {
            "block": "3f2843d0-3cc6-4eaf-b1d6-626734cccc96",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "we"
          }
        },
        {
          "source": {
            "block": "78ac8640-7388-4893-b4a3-59892d19b0be",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "din"
          },
          "size": 9
        },
        {
          "source": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "dout"
          },
          "target": {
            "block": "9057eea9-313f-43df-ac6d-cd068716d78b",
            "port": "in"
          },
          "size": 9
        },
        {
          "source": {
            "block": "47aaab97-b8a8-483c-97ca-54283b829014",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "addr_a"
          },
          "size": 11
        },
        {
          "source": {
            "block": "ed782a53-4fa4-4068-9742-2ae2bd31114e",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "addr_b"
          },
          "size": 11
        }
      ]
    }
  },
  "dependencies": {}
}
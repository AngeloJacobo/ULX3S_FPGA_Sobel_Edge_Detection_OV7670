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
          "id": "0c519e81-9535-4db8-84b8-277e33f90101",
          "type": "basic.output",
          "data": {
            "name": "dout",
            "range": "[16:0]",
            "pins": [
              {
                "index": "16",
                "name": "",
                "value": ""
              },
              {
                "index": "15",
                "name": "",
                "value": ""
              },
              {
                "index": "14",
                "name": "",
                "value": ""
              },
              {
                "index": "13",
                "name": "",
                "value": ""
              },
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
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
            "virtual": true
          },
          "position": {
            "x": 1160,
            "y": 488
          }
        },
        {
          "id": "e8263ad0-906f-4bb3-8911-c27c04b83345",
          "type": "basic.input",
          "data": {
            "name": "din",
            "range": "[16:0]",
            "pins": [
              {
                "index": "16",
                "name": "",
                "value": ""
              },
              {
                "index": "15",
                "name": "",
                "value": ""
              },
              {
                "index": "14",
                "name": "",
                "value": ""
              },
              {
                "index": "13",
                "name": "",
                "value": ""
              },
              {
                "index": "12",
                "name": "",
                "value": ""
              },
              {
                "index": "11",
                "name": "",
                "value": ""
              },
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
            "y": 512
          }
        },
        {
          "id": "e3adafee-3ffa-448e-8819-36b715f5443c",
          "type": "basic.input",
          "data": {
            "name": "addr_a",
            "range": "[9:0]",
            "pins": [
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
          "id": "5707eec4-e07e-4fb0-825e-9d864896a176",
          "type": "basic.input",
          "data": {
            "name": "addr_b",
            "range": "[9:0]",
            "pins": [
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
            "code": "\tlocalparam ADDR_WIDTH=10,\r\n\t               DATA_WIDTH=17;\r\n\t\r\n\treg[DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];\r\n\treg[ADDR_WIDTH-1:0] addr_b_q;\r\n\t\r\n\talways @(posedge clk_w) begin\r\n\t\tif(we) ram[addr_a]<=din;\r\n\tend\r\n\talways @(posedge clk_r) begin\r\n\t\taddr_b_q<=addr_b;\t\r\n\tend\r\n\tassign dout=ram[addr_b_q];",
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
                  "range": "[16:0]",
                  "size": 17
                },
                {
                  "name": "addr_a",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "addr_b",
                  "range": "[9:0]",
                  "size": 10
                }
              ],
              "out": [
                {
                  "name": "dout",
                  "range": "[16:0]",
                  "size": 17
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
            "block": "e8263ad0-906f-4bb3-8911-c27c04b83345",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "din"
          },
          "size": 17
        },
        {
          "source": {
            "block": "e3adafee-3ffa-448e-8819-36b715f5443c",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "addr_a"
          },
          "size": 10
        },
        {
          "source": {
            "block": "5707eec4-e07e-4fb0-825e-9d864896a176",
            "port": "out"
          },
          "target": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "addr_b"
          },
          "size": 10
        },
        {
          "source": {
            "block": "f46d498c-494a-432c-8021-02c5ebce2c0f",
            "port": "dout"
          },
          "target": {
            "block": "0c519e81-9535-4db8-84b8-277e33f90101",
            "port": "in"
          },
          "size": 17
        }
      ]
    }
  },
  "dependencies": {}
}
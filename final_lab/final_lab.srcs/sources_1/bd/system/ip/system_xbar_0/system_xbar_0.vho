-- (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_crossbar:2.1
-- IP Revision: 3

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT system_xbar_0
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axi_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_awready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wlast : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_wready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_arready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_awid : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awlock : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awcache : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    m_axi_awregion : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_awqos : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_awvalid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awready : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wvalid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wready : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bid : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    m_axi_bresp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_bvalid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bready : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arid : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    m_axi_araddr : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arlock : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arcache : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    m_axi_arregion : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_arqos : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_arvalid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arready : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rid : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    m_axi_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rvalid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;
ATTRIBUTE SYN_BLACK_BOX : BOOLEAN;
ATTRIBUTE SYN_BLACK_BOX OF system_xbar_0 : COMPONENT IS TRUE;
ATTRIBUTE BLACK_BOX_PAD_PIN : STRING;
ATTRIBUTE BLACK_BOX_PAD_PIN OF system_xbar_0 : COMPONENT IS "aclk,aresetn,s_axi_awid[11:0],s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock[0:0],s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awqos[3:0],s_axi_awvalid[0:0],s_axi_awready[0:0],s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast[0:0],s_axi_wvalid[0:0],s_axi_wready[0:0],s_axi_bid[11:0],s_axi_bresp[1:0],s_axi_bvalid[0:0],s_axi_bready[0:0],s_axi_arid[11:0],s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock[0:0],s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arqos[3:0],s_axi_arvalid[0:0],s_axi_arready[0:0],s_axi_rid[11:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast[0:0],s_axi_rvalid[0:0],s_axi_rready[0:0],m_axi_awid[47:0],m_axi_awaddr[127:0],m_axi_awlen[31:0],m_axi_awsize[11:0],m_axi_awburst[7:0],m_axi_awlock[3:0],m_axi_awcache[15:0],m_axi_awprot[11:0],m_axi_awregion[15:0],m_axi_awqos[15:0],m_axi_awvalid[3:0],m_axi_awready[3:0],m_axi_wdata[127:0],m_axi_wstrb[15:0],m_axi_wlast[3:0],m_axi_wvalid[3:0],m_axi_wready[3:0],m_axi_bid[47:0],m_axi_bresp[7:0],m_axi_bvalid[3:0],m_axi_bready[3:0],m_axi_arid[47:0],m_axi_araddr[127:0],m_axi_arlen[31:0],m_axi_arsize[11:0],m_axi_arburst[7:0],m_axi_arlock[3:0],m_axi_arcache[15:0],m_axi_arprot[11:0],m_axi_arregion[15:0],m_axi_arqos[15:0],m_axi_arvalid[3:0],m_axi_arready[3:0],m_axi_rid[47:0],m_axi_rdata[127:0],m_axi_rresp[7:0],m_axi_rlast[3:0],m_axi_rvalid[3:0],m_axi_rready[3:0]";

-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : system_xbar_0
  PORT MAP (
    aclk => aclk,
    aresetn => aresetn,
    s_axi_awid => s_axi_awid,
    s_axi_awaddr => s_axi_awaddr,
    s_axi_awlen => s_axi_awlen,
    s_axi_awsize => s_axi_awsize,
    s_axi_awburst => s_axi_awburst,
    s_axi_awlock => s_axi_awlock,
    s_axi_awcache => s_axi_awcache,
    s_axi_awprot => s_axi_awprot,
    s_axi_awqos => s_axi_awqos,
    s_axi_awvalid => s_axi_awvalid,
    s_axi_awready => s_axi_awready,
    s_axi_wdata => s_axi_wdata,
    s_axi_wstrb => s_axi_wstrb,
    s_axi_wlast => s_axi_wlast,
    s_axi_wvalid => s_axi_wvalid,
    s_axi_wready => s_axi_wready,
    s_axi_bid => s_axi_bid,
    s_axi_bresp => s_axi_bresp,
    s_axi_bvalid => s_axi_bvalid,
    s_axi_bready => s_axi_bready,
    s_axi_arid => s_axi_arid,
    s_axi_araddr => s_axi_araddr,
    s_axi_arlen => s_axi_arlen,
    s_axi_arsize => s_axi_arsize,
    s_axi_arburst => s_axi_arburst,
    s_axi_arlock => s_axi_arlock,
    s_axi_arcache => s_axi_arcache,
    s_axi_arprot => s_axi_arprot,
    s_axi_arqos => s_axi_arqos,
    s_axi_arvalid => s_axi_arvalid,
    s_axi_arready => s_axi_arready,
    s_axi_rid => s_axi_rid,
    s_axi_rdata => s_axi_rdata,
    s_axi_rresp => s_axi_rresp,
    s_axi_rlast => s_axi_rlast,
    s_axi_rvalid => s_axi_rvalid,
    s_axi_rready => s_axi_rready,
    m_axi_awid => m_axi_awid,
    m_axi_awaddr => m_axi_awaddr,
    m_axi_awlen => m_axi_awlen,
    m_axi_awsize => m_axi_awsize,
    m_axi_awburst => m_axi_awburst,
    m_axi_awlock => m_axi_awlock,
    m_axi_awcache => m_axi_awcache,
    m_axi_awprot => m_axi_awprot,
    m_axi_awregion => m_axi_awregion,
    m_axi_awqos => m_axi_awqos,
    m_axi_awvalid => m_axi_awvalid,
    m_axi_awready => m_axi_awready,
    m_axi_wdata => m_axi_wdata,
    m_axi_wstrb => m_axi_wstrb,
    m_axi_wlast => m_axi_wlast,
    m_axi_wvalid => m_axi_wvalid,
    m_axi_wready => m_axi_wready,
    m_axi_bid => m_axi_bid,
    m_axi_bresp => m_axi_bresp,
    m_axi_bvalid => m_axi_bvalid,
    m_axi_bready => m_axi_bready,
    m_axi_arid => m_axi_arid,
    m_axi_araddr => m_axi_araddr,
    m_axi_arlen => m_axi_arlen,
    m_axi_arsize => m_axi_arsize,
    m_axi_arburst => m_axi_arburst,
    m_axi_arlock => m_axi_arlock,
    m_axi_arcache => m_axi_arcache,
    m_axi_arprot => m_axi_arprot,
    m_axi_arregion => m_axi_arregion,
    m_axi_arqos => m_axi_arqos,
    m_axi_arvalid => m_axi_arvalid,
    m_axi_arready => m_axi_arready,
    m_axi_rid => m_axi_rid,
    m_axi_rdata => m_axi_rdata,
    m_axi_rresp => m_axi_rresp,
    m_axi_rlast => m_axi_rlast,
    m_axi_rvalid => m_axi_rvalid,
    m_axi_rready => m_axi_rready
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file system_xbar_0.vhd when simulating
-- the core, system_xbar_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 8.0
 PARAMETER PROC_INSTANCE = CIPS_0_pspmc_0_psv_cortexa72_0
 PARAMETER stdin = CIPS_0_pspmc_0_psv_sbsauart_0
 PARAMETER stdout = CIPS_0_pspmc_0_psv_sbsauart_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu_cortexa72
 PARAMETER DRIVER_VER = 1.3
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_cortexa72_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = scugic
 PARAMETER DRIVER_VER = 5.0
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_acpu_gic
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.15
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_adma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.15
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_adma_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.15
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_adma_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.15
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_adma_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.15
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_adma_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.15
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_adma_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.15
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_adma_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.15
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_adma_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_apu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.7
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_canfd_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = coresightps_dcc
 PARAMETER DRIVER_VER = 1.8
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_a720_cti
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_a720_dbg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_a720_etm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_a720_pmu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_a721_cti
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_a721_dbg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_a721_etm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_a721_pmu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_apu_cti
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_apu_ela
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_apu_etf
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_apu_fun
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_atm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_cti2a
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_cti2d
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_ela2a
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_ela2b
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_ela2c
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_ela2d
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_fun
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_cpm_rom
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pmonpsv
 PARAMETER DRIVER_VER = 2.2
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_fpd_atm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_fpd_stm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pmonpsv
 PARAMETER DRIVER_VER = 2.2
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_coresight_lpd_atm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_cpm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_crf_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_crl_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_crp_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emacps
 PARAMETER DRIVER_VER = 3.17
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ethernet_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emacps
 PARAMETER DRIVER_VER = 3.17
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ethernet_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_afi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_afi_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_cci_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_gpv_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_maincci_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_slave_xmpu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_slcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_slcr_secure_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_smmu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_fpd_smmutcu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iicps
 PARAMETER DRIVER_VER = 3.16
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_i2c_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iicps
 PARAMETER DRIVER_VER = 3.16
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_i2c_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_buffer
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_pmc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_pmc_nobuf
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ipi_psm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_lpd_afi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_lpd_iou_secure_slcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_lpd_iou_slcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_lpd_slcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_lpd_slcr_secure_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_lpd_xppu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ocm_ctrl
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ocm_ram_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ocm_xmpu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_aes
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_bbram_ctrl
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = cframe
 PARAMETER DRIVER_VER = 1.4
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_cfi_cframe_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = cfupmc
 PARAMETER DRIVER_VER = 1.5
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_cfu_apb_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = csudma
 PARAMETER DRIVER_VER = 1.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_dma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = csudma
 PARAMETER DRIVER_VER = 1.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_dma_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_efuse_cache
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_efuse_ctrl
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_global_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpiops
 PARAMETER DRIVER_VER = 3.10
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_ppu1_mdm_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = qspipsu
 PARAMETER DRIVER_VER = 1.16
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_qspi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_qspi_ospi_flash_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_ram
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_ram_npi
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_rsa
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = rtcpsu
 PARAMETER DRIVER_VER = 1.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_rtc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sdps
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_sd_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_sha
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_slave_boot
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_slave_boot_stream
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sysmonpsv
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_sysmon_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = trngpsv
 PARAMETER DRIVER_VER = 1.2
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_trng
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_xmpu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_xppu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_pmc_xppu_npi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_psm_global_reg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_r5_1_atcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_r5_1_btcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_r5_tcm_ram_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scugic
 PARAMETER DRIVER_VER = 5.0
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_rcpu_gic
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_rpu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartpsv
 PARAMETER DRIVER_VER = 1.7
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_sbsauart_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_scntr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_scntrs_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.16
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_ttc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 3.1
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_usb_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = usbpsu
 PARAMETER DRIVER_VER = 1.12
 PARAMETER HW_INSTANCE = CIPS_0_pspmc_0_psv_usb_xhci_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.15
 PARAMETER HW_INSTANCE = axi_intc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = instrumentation_wrapper
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = instrumentation_wrapper_0
END



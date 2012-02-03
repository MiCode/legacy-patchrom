.class public final Lcom/broadcom/bt/app/settings/BluetoothDid;
.super Ljava/lang/Object;
.source "BluetoothDid.java"


# static fields
.field private static final STATUS:[Ljava/lang/String;

.field private static final VENDOR_ID_SOURCE:[Ljava/lang/String;

.field private static final VENDOR_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Invalid"

    aput-object v1, v0, v2

    const-string v1, "BTSIG"

    aput-object v1, v0, v3

    const-string v1, "USBIF"

    aput-object v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_ID_SOURCE:[Ljava/lang/String;

    .line 51
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Success"

    aput-object v1, v0, v2

    const-string v1, "Fail"

    aput-object v1, v0, v3

    const-string v1, "Pending"

    aput-object v1, v0, v4

    sput-object v0, Lcom/broadcom/bt/app/settings/BluetoothDid;->STATUS:[Ljava/lang/String;

    .line 55
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Ericsson Technology Licensing"

    aput-object v1, v0, v2

    const-string v1, "Nokia Mobile Phones"

    aput-object v1, v0, v3

    const-string v1, "Intel Corp."

    aput-object v1, v0, v4

    const-string v1, "IBM Corp."

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Toshiba Corp."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "3Com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Microsoft"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Lucent"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Motorola"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Infineon Technologies AG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Cambridge Silicon Radio"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Silicon Wave"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Digianswer A/S"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Texas Instruments Inc."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Parthus Technologies Inc."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Broadcom Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Mitel Semiconductor"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Widcomm, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Zeevo, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Atmel Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Mitsubishi Electric Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RTX Telecom A/S"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "KC Technology Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Newlogic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Transilica, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Rohde & Schwarz GmbH & Co. KG"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "TTPCom Limited"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Signia Technologies, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Conexant Systems Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Qualcomm"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Inventel"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "AVM Berlin"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "BandSpeed, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Mansella Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "NEC Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "WavePlus Technology Co., Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Alcatel"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Philips Semiconductors"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "C Technologies"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Open Interface"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "R F Micro Devices"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Hitachi Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Symbol Technologies, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Tenovis"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Macronix International Co. Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "GCT Semiconductor"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Norwood Systems"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "MewTel Technology Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ST Microelectronics"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Synopsys"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Red-M (Communications) Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Commil Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Computer Access Technology Corporation (CATC)"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Eclipse (HQ Espana) S.L."

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Renesas Technology Corp."

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Mobilian Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Terax"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Integrated System Solution Corp."

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Matsushita Electric Industrial Co., Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gennum Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Research In Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "IPextreme, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Systems and Chips, Inc"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Bluetooth SIG, Inc"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Seiko Epson Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Integrated Silicon Solution Taiwan, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "CONWISE Technology Corporation Ltd"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "PARROT SA"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Socket Mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Atheros Communications, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "MediaTek, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Bluegiga"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Marvell Technology Group Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "3DSP Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Accel Semiconductor Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Continental Automotive Systems"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Apple, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Staccato Communications, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Avago Technologies"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "APT Ltd."

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "SiRF Technology, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Tzero Technologies, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "J&M Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Free2move AB"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "3DiJoy Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Plantronics, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Sony Ericsson Mobile Communications"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Harman International Industries, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Vizio, Inc."

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Nordic Semiconductor ASA"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "EM Microelectronic-Marin SA"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Ralink Technology Corporation"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Belkin International, Inc."

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDidRecord(Landroid/content/Context;Landroid/preference/Preference;Landroid/os/Bundle;I)V
    .locals 12
    .parameter "context"
    .parameter "p"
    .parameter "extra"
    .parameter "recNum"

    .prologue
    .line 88
    const-string v0, "android.bluetooth.adapter.extra.DI_STATUS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 89
    .local v4, status:I
    const-string v0, "android.bluetooth.adapter.extra.DI_VENDOR_ID"

    const v1, 0xffff

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 90
    .local v7, vendorId:I
    const-string v0, "android.bluetooth.adapter.extra.DI_VENDOR_ID_SOURCE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 92
    .local v8, vendorIdSource:I
    const-string v0, "android.bluetooth.adapter.extra.DI_HANDLE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, handle:I
    if-ne v0, p3, :cond_0

    if-nez v4, :cond_0

    const p3, 0xffff

    if-ne v7, p3, :cond_1

    .line 94
    .end local p3
    :cond_0
    const p2, 0x7f080717

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2
    move-result-object p0

    .end local p0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #handle:I
    aput-object v0, p2, p3

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    const-string p0, ""

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    .end local p1
    :goto_0
    return-void

    .line 100
    .restart local v0       #handle:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    const-string p3, "android.bluetooth.adapter.extra.DI_PRIMARY_RECORD"

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 101
    .local v2, primaryRecord:Z
    const/4 p3, 0x1

    if-ne v2, p3, :cond_2

    .line 102
    const p3, 0x7f080716

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :goto_1
    sget-object p3, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    array-length p3, p3

    if-ge v7, p3, :cond_3

    const/4 p3, 0x1

    if-ne v8, p3, :cond_3

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v1, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .local p3, summary:Ljava/lang/CharSequence;
    move-object v6, p3

    .line 118
    .end local p3           #summary:Ljava/lang/CharSequence;
    .local v6, summary:Ljava/lang/CharSequence;
    :goto_2
    const-string p3, "android.bluetooth.adapter.extra.DI_PRODUCT_ID"

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 119
    .local v3, productId:I
    const-string p3, "android.bluetooth.adapter.extra.DI_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 120
    .local v9, version:I
    div-int/lit16 p3, v9, 0x100

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    .line 121
    .local p3, major:Ljava/lang/String;
    rem-int/lit16 v1, v9, 0x100

    div-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, minor:Ljava/lang/String;
    rem-int/lit16 v5, v9, 0x100

    rem-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, subMinor:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #summary:Ljava/lang/CharSequence;
    const-string v10, "\nProduct: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " (v"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #major:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "."

    .end local v1           #minor:Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 126
    .local p3, summary:Ljava/lang/CharSequence;
    invoke-virtual {p1, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    const-string p1, "android.bluetooth.adapter.extra.DI_SPEC_ID"

    .end local p1
    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .end local p3           #summary:Ljava/lang/CharSequence;
    move-result v1

    .line 129
    .local v1, specId:I
    const-string p1, "android.bluetooth.adapter.extra.DI_CLIENT_EXECUTABLE_URL"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    .local p1, clientExecutableUrl:Ljava/lang/String;
    const-string p3, "android.bluetooth.adapter.extra.DI_SERVICE_DESCRIPTION"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 132
    .local p3, serviceDescription:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.extra.DI_DOCUMENTATION_URL"

    .end local v5           #subMinor:Ljava/lang/String;
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    .local p2, documentationUrl:Ljava/lang/String;
    const-string v5, "Record %1$s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 136
    .local p0, sp:Landroid/content/SharedPreferences;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 137
    .local p0, se:Landroid/content/SharedPreferences$Editor;
    const-string v5, "Handle"

    invoke-interface {p0, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v0, "Status"

    .end local v0           #handle:I
    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v0, "PrimaryRecord"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v0, "SpecId"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v0, "VendorId"

    invoke-interface {p0, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    const-string v0, "VendorIdSource"

    invoke-interface {p0, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    const-string v0, "ProductId"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string v0, "Version"

    invoke-interface {p0, v0, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    const-string v0, "ClientExecutableUrl"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    const-string p1, "ServiceDescription"

    .end local p1           #clientExecutableUrl:Ljava/lang/String;
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    const-string p1, "DocumentationUrl"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 105
    .end local v1           #specId:I
    .end local v3           #productId:I
    .end local v9           #version:I
    .end local p3           #serviceDescription:Ljava/lang/String;
    .restart local v0       #handle:I
    .local p0, context:Landroid/content/Context;
    .local p1, p:Landroid/preference/Preference;
    .local p2, extra:Landroid/os/Bundle;
    :cond_2
    const p3, 0x7f080715

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 111
    :cond_3
    const/4 p3, 0x1

    if-lt v8, p3, :cond_4

    const/4 p3, 0x2

    if-gt v8, p3, :cond_4

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v1, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_ID_SOURCE:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .local p3, summary:Ljava/lang/CharSequence;
    move-object v6, p3

    .end local p3           #summary:Ljava/lang/CharSequence;
    .restart local v6       #summary:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 115
    .end local v6           #summary:Ljava/lang/CharSequence;
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .restart local p3       #summary:Ljava/lang/CharSequence;
    move-object v6, p3

    .end local p3           #summary:Ljava/lang/CharSequence;
    .restart local v6       #summary:Ljava/lang/CharSequence;
    goto/16 :goto_2
.end method

.method public static showRemoteDiRecord(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "recNum"

    .prologue
    .line 152
    const-string v0, "Record %1$s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string p0, "Handle"

    .end local p0
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 156
    const-string p0, "BluetoothDid"

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sp:Landroid/content/SharedPreferences;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error storing/retrieving DID record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 p0, 0x0

    .line 205
    :goto_0
    return-object p0

    .line 159
    .restart local v0       #sp:Landroid/content/SharedPreferences;
    .restart local p1
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DID Record: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    .local p1, summary:Ljava/lang/String;
    const-string p0, "Status"

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 162
    .local p0, status:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #summary:Ljava/lang/String;
    const-string v1, "\nStatus: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Lcom/broadcom/bt/app/settings/BluetoothDid;->STATUS:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    .restart local p1       #summary:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #status:Ljava/lang/Integer;
    if-eqz p0, :cond_1

    move-object p0, p1

    .line 164
    goto :goto_0

    .line 167
    :cond_1
    const-string p0, "SpecId"

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 168
    .local p0, specId:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #summary:Ljava/lang/String;
    const-string v1, "\nSpecification Id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " (v"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #specId:Ljava/lang/Integer;
    rem-int/lit16 p0, p0, 0x100

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 170
    .local p0, summary:Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #summary:Ljava/lang/String;
    const-string p1, "\nPrimary Record: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "PrimaryRecord"

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 172
    .restart local p0       #summary:Ljava/lang/String;
    const-string p1, "VendorId"

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 173
    .local p1, vendorId:Ljava/lang/Integer;
    const-string v1, "VendorIdSource"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 174
    .local v1, vendorIdSource:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #summary:Ljava/lang/String;
    const-string v2, "\nVendor Id: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    .restart local p0       #summary:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #summary:Ljava/lang/String;
    const-string v2, " ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v2, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1           #vendorId:Ljava/lang/Integer;
    aget-object p1, v2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 179
    .restart local p0       #summary:Ljava/lang/String;
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #summary:Ljava/lang/String;
    const-string p1, "\nVendor Id Source: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 180
    .restart local p0       #summary:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-gt p1, v2, :cond_3

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #summary:Ljava/lang/String;
    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/broadcom/bt/app/settings/BluetoothDid;->VENDOR_ID_SOURCE:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #vendorIdSource:Ljava/lang/Integer;
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #summary:Ljava/lang/String;
    move-object p1, p0

    .line 185
    .end local p0           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    :goto_1
    const-string p0, "ProductId"

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 186
    .local p0, productId:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #summary:Ljava/lang/String;
    const-string v1, "\nProduct Id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #productId:Ljava/lang/Integer;
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    .local p0, summary:Ljava/lang/String;
    const-string p1, "Version"

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 189
    .local p1, version:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #summary:Ljava/lang/String;
    const-string v1, "\nVersion: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, summary:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/lit16 p0, p0, 0x100

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 191
    .local p0, major:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1           #version:Ljava/lang/Integer;
    rem-int/lit16 p1, p1, 0x100

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 192
    .local v1, version:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 193
    .local p1, minor:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #version:Ljava/lang/Integer;
    rem-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, subMinor:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #summary:Ljava/lang/String;
    const-string v3, " (v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #major:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    .end local p1           #minor:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    .local p1, summary:Ljava/lang/String;
    const-string p0, "ClientExecutableUrl"

    const-string v1, ""

    .end local v1           #subMinor:Ljava/lang/String;
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 197
    .local p0, clientExecutableUrl:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #summary:Ljava/lang/String;
    const-string v1, "\nClient Executable URL: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #clientExecutableUrl:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    .restart local p1       #summary:Ljava/lang/String;
    const-string p0, "ServiceDescription"

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    .local p0, serviceDescription:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #summary:Ljava/lang/String;
    const-string v1, "\nService Description: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #serviceDescription:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    .restart local p1       #summary:Ljava/lang/String;
    const-string p0, "DocumentationUrl"

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    .local p0, documentationUrl:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sp:Landroid/content/SharedPreferences;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #summary:Ljava/lang/String;
    const-string v0, "\nDocumentation URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #documentationUrl:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 205
    .local p0, summary:Ljava/lang/String;
    goto/16 :goto_0

    .restart local v0       #sp:Landroid/content/SharedPreferences;
    .local v1, vendorIdSource:Ljava/lang/Integer;
    :cond_3
    move-object p1, p0

    .end local p0           #summary:Ljava/lang/String;
    .restart local p1       #summary:Ljava/lang/String;
    goto/16 :goto_1
.end method

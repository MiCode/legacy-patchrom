.class Lcom/android/phone/BluetoothAtSms$SmsStatus;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsStatus"
.end annotation


# static fields
.field public static final ALL:I = 0x4

.field public static final ALL_STRING:Ljava/lang/String; = "\"ALL\""

.field public static final HEADER_ONLY:I = 0x5

.field public static final REC_READ:I = 0x1

.field public static final REC_READ_STRING:Ljava/lang/String; = "\"REC READ\""

.field public static final REC_UNREAD:I = 0x0

.field public static final REC_UNREAD_STRING:Ljava/lang/String; = "\"REC UNREAD\""

.field public static final STO_SENT:I = 0x3

.field public static final STO_SENT_STRING:Ljava/lang/String; = "\"STO SENT\""

.field public static final STO_UNSENT:I = 0x2

.field public static final STO_UNSENT_STRING:Ljava/lang/String; = "\"STO UNSENT\""

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "\"UNKNOW\""


# instance fields
.field private final UNKNOWN:I

.field private mStatus:I

.field private mStatus_Description:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 114
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->UNKNOWN:I

    .line 115
    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 116
    iget v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    .line 117
    return-void
.end method

.method constructor <init>(Lcom/android/phone/BluetoothAtSms;I)V
    .locals 1
    .parameter
    .parameter "value"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->UNKNOWN:I

    .line 120
    iput p2, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 121
    invoke-direct {p0, p2}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    .line 122
    return-void
.end method

.method constructor <init>(Lcom/android/phone/BluetoothAtSms;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "Str"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->UNKNOWN:I

    .line 125
    iput-object p2, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->toIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 127
    return-void
.end method

.method private toIntValue(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 148
    const/4 v0, -0x1

    .line 149
    .local v0, IntStatus:I
    const-string v1, "\"REC UNREAD\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 151
    :cond_0
    const-string v1, "\"REC READ\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const-string v1, "\"STO UNSENT\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const/4 v0, 0x2

    goto :goto_0

    .line 155
    :cond_2
    const-string v1, "\"STO SENT\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    const/4 v0, 0x3

    goto :goto_0

    .line 157
    :cond_3
    const-string v1, "\"ALL\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    const/4 v0, 0x4

    goto :goto_0

    .line 160
    :cond_4
    const-string v1, "\"UNKNOW\""

    iput-object v1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    goto :goto_0
.end method

.method private toString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 166
    const-string v0, "\"UNKNOW\""

    .line 167
    .local v0, StrStatus:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 184
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 188
    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "\"REC UNREAD\""

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "\"REC READ\""

    .line 173
    goto :goto_0

    .line 175
    :pswitch_2
    const-string v0, "\"STO UNSENT\""

    .line 176
    goto :goto_0

    .line 178
    :pswitch_3
    const-string v0, "\"STO SENT\""

    .line 179
    goto :goto_0

    .line 181
    :pswitch_4
    const-string v0, "\"ALL\""

    .line 182
    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    return v0
.end method

.method getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    return-object v0
.end method

.method set(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    .line 140
    return-void
.end method

.method set(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->toIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 145
    return-void
.end method

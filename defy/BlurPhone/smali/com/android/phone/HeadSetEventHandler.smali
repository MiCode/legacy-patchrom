.class Lcom/android/phone/HeadSetEventHandler;
.super Ljava/lang/Object;
.source "HeadSetEventHandler.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "HeadSetEvntHandlr"

.field private static evntStartTime:J

.field private static longPressFlag:Z

.field private static sendActionDown:Z

.field private static upKeyFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    .line 18
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/HeadSetEventHandler;->evntStartTime:J

    .line 20
    sput-boolean v2, Lcom/android/phone/HeadSetEventHandler;->longPressFlag:Z

    .line 24
    sput-boolean v2, Lcom/android/phone/HeadSetEventHandler;->sendActionDown:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "phone"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v5, "HeadSetEvntHandlr"

    .line 27
    const/4 v0, 0x1

    .line 29
    .local v0, consumed:Z
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "HeadSetEvntHandlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.getEventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "HeadSetEvntHandlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evntStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/phone/HeadSetEventHandler;->evntStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8

    .line 33
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "handleEvent for KeyEvent.ACTION_DOWN"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 35
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "event.getRepeatCount == 0"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    sput-wide v1, Lcom/android/phone/HeadSetEventHandler;->evntStartTime:J

    .line 39
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_4

    .line 40
    const/4 v0, 0x0

    .line 41
    sput-boolean v6, Lcom/android/phone/HeadSetEventHandler;->sendActionDown:Z

    .line 42
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "found short press. ACTION_DOWN. set consumed = false, will broad cast"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4
    :goto_0
    return v0

    .line 46
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    sget-wide v3, Lcom/android/phone/HeadSetEventHandler;->evntStartTime:J

    sub-long/2addr v1, v3

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 49
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "Long press condition satisfied"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_6
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->longPressFlag:Z

    if-nez v1, :cond_7

    .line 52
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->handleHeadsetLongPress(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 53
    sput-boolean v6, Lcom/android/phone/HeadSetEventHandler;->longPressFlag:Z

    goto :goto_0

    .line 55
    :cond_7
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "Long press condition already handled"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 59
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "handleEvent for KeyEvent.ACTION_UP"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_9
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->longPressFlag:Z

    if-nez v1, :cond_d

    .line 61
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "this is a quick press event"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_a
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 69
    :cond_b
    :goto_1
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->sendActionDown:Z

    if-ne v1, v6, :cond_c

    .line 70
    const/4 v0, 0x0

    .line 71
    sput-boolean v4, Lcom/android/phone/HeadSetEventHandler;->sendActionDown:Z

    .line 72
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "ACTION_UP. set consumed = false, will broad cast"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_c
    sput-boolean v4, Lcom/android/phone/HeadSetEventHandler;->longPressFlag:Z

    .line 77
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/phone/HeadSetEventHandler;->evntStartTime:J

    goto :goto_0

    .line 65
    :cond_d
    sget-boolean v1, Lcom/android/phone/HeadSetEventHandler;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "HeadSetEvntHandlr"

    const-string v1, "Long press already handled... nothing to do here"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

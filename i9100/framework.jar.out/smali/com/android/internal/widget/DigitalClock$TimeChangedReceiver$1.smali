.class Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/widget/DigitalClock;

.field final synthetic val$timezoneChanged:Z

.field final synthetic val$tmpIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;ZLandroid/content/Intent;Lcom/android/internal/widget/DigitalClock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$tmpIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/DigitalClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-boolean v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$tmpIntent:Landroid/content/Intent;

    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/DigitalClock;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/widget/DigitalClock;->access$002(Lcom/android/internal/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 87
    .end local v0           #tz:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/DigitalClock;

    #calls: Lcom/android/internal/widget/DigitalClock;->updateTime()V
    invoke-static {v1}, Lcom/android/internal/widget/DigitalClock;->access$100(Lcom/android/internal/widget/DigitalClock;)V

    .line 88
    return-void
.end method

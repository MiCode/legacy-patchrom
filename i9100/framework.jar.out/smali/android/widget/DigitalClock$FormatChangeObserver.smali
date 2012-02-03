.class Landroid/widget/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DigitalClock;


# direct methods
.method public constructor <init>(Landroid/widget/DigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Landroid/widget/DigitalClock$FormatChangeObserver;->this$0:Landroid/widget/DigitalClock;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/DigitalClock$FormatChangeObserver;->this$0:Landroid/widget/DigitalClock;

    #calls: Landroid/widget/DigitalClock;->setFormat()V
    invoke-static {v0}, Landroid/widget/DigitalClock;->access$300(Landroid/widget/DigitalClock;)V

    .line 127
    return-void
.end method

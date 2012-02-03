.class Landroid/widget/DateTimeView$2;
.super Landroid/database/ContentObserver;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DateTimeView;


# direct methods
.method constructor <init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 256
    iput-object p1, p0, Landroid/widget/DateTimeView$2;->this$0:Landroid/widget/DateTimeView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 259
    iget-object v0, p0, Landroid/widget/DateTimeView$2;->this$0:Landroid/widget/DateTimeView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 260
    iget-object v0, p0, Landroid/widget/DateTimeView$2;->this$0:Landroid/widget/DateTimeView;

    invoke-virtual {v0}, Landroid/widget/DateTimeView;->update()V

    .line 261
    return-void
.end method

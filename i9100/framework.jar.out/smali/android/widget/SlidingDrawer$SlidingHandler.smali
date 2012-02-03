.class Landroid/widget/SlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Landroid/widget/SlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Landroid/widget/SlidingDrawer$SlidingHandler;->this$0:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer$SlidingHandler;-><init>(Landroid/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 948
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 953
    :goto_0
    return-void

    .line 950
    :pswitch_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer$SlidingHandler;->this$0:Landroid/widget/SlidingDrawer;

    #calls: Landroid/widget/SlidingDrawer;->doAnimation()V
    invoke-static {v0}, Landroid/widget/SlidingDrawer;->access$400(Landroid/widget/SlidingDrawer;)V

    goto :goto_0

    .line 948
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

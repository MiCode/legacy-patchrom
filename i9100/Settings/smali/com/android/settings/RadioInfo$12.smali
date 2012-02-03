.class Lcom/android/settings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 882
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 893
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 884
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1500(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    goto :goto_0

    .line 887
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    #getter for: Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$1500(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    goto :goto_0

    .line 882
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

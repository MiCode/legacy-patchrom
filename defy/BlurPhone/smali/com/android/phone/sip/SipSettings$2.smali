.class Lcom/android/phone/sip/SipSettings$2;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->registerForAddSipListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$2;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$2;->this$0:Lcom/android/phone/sip/SipSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/phone/sip/SipSettings;->access$600(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    .line 197
    return-void
.end method

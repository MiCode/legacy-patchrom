.class Lcom/android/phone/ManageConferenceUtils$1;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManageConferenceUtils;

.field final synthetic val$connection:Lcom/android/internal/telephony/Connection;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils$1;->this$0:Lcom/android/phone/ManageConferenceUtils;

    iput p2, p0, Lcom/android/phone/ManageConferenceUtils$1;->val$i:I

    iput-object p3, p0, Lcom/android/phone/ManageConferenceUtils$1;->val$connection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils$1;->this$0:Lcom/android/phone/ManageConferenceUtils;

    iget v1, p0, Lcom/android/phone/ManageConferenceUtils$1;->val$i:I

    iget-object v2, p0, Lcom/android/phone/ManageConferenceUtils$1;->val$connection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/ManageConferenceUtils;->endConferenceConnection(ILcom/android/internal/telephony/Connection;)V

    .line 233
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 234
    return-void
.end method

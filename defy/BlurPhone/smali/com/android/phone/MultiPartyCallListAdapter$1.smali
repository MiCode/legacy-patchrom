.class Lcom/android/phone/MultiPartyCallListAdapter$1;
.super Ljava/lang/Object;
.source "MultiPartyCallListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MultiPartyCallListAdapter;->createItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MultiPartyCallListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/MultiPartyCallListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/MultiPartyCallListAdapter$1;->this$0:Lcom/android/phone/MultiPartyCallListAdapter;

    iput p2, p0, Lcom/android/phone/MultiPartyCallListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 104
    invoke-static {}, Lcom/android/phone/MultiPartyCallListAdapter;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MultiPartyCallListAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    iget-object v0, p0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mConn:Lcom/android/internal/telephony/Connection;

    .line 105
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 106
    return-void
.end method

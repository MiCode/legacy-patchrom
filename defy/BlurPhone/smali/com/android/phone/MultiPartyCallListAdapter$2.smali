.class Lcom/android/phone/MultiPartyCallListAdapter$2;
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
    .line 126
    iput-object p1, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->this$0:Lcom/android/phone/MultiPartyCallListAdapter;

    iput p2, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 128
    invoke-static {}, Lcom/android/phone/MultiPartyCallListAdapter;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    iget-object v0, v3, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mConn:Lcom/android/internal/telephony/Connection;

    .line 129
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 131
    invoke-static {}, Lcom/android/phone/MultiPartyCallListAdapter;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    .line 132
    invoke-static {}, Lcom/android/phone/MultiPartyCallListAdapter;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mConn:Lcom/android/internal/telephony/Connection;

    .line 143
    :goto_0
    return-void

    .line 136
    .restart local p0
    :cond_0
    invoke-static {}, Lcom/android/phone/MultiPartyCallListAdapter;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/MultiPartyCallListAdapter;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "multi_party_call"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->this$0:Lcom/android/phone/MultiPartyCallListAdapter;

    #getter for: Lcom/android/phone/MultiPartyCallListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/MultiPartyCallListAdapter;->access$200(Lcom/android/phone/MultiPartyCallListAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    iget-object v3, p0, Lcom/android/phone/MultiPartyCallListAdapter$2;->this$0:Lcom/android/phone/MultiPartyCallListAdapter;

    #getter for: Lcom/android/phone/MultiPartyCallListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/MultiPartyCallListAdapter;->access$200(Lcom/android/phone/MultiPartyCallListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

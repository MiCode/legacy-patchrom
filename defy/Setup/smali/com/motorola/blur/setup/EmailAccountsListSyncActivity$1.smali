.class Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$1;
.super Ljava/lang/Object;
.source "EmailAccountsListSyncActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->setupAccountsWiFiSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$1;->this$0:Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 111
    if-ge p3, v8, :cond_0

    .line 129
    :goto_0
    return-void

    .line 114
    :cond_0
    const v7, 0x7f0b00b6

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 115
    .local v3, ctv:Landroid/widget/CheckedTextView;
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->toggle()V

    .line 116
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    .line 117
    .local v2, checked:Z
    sub-int v7, p3, v8

    invoke-virtual {p1, v7}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 118
    .local v1, c:Landroid/database/Cursor;
    const/16 v7, 0xb

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, accountId:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 120
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "sync_connection"

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 124
    .local v5, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$1;->this$0:Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;

    invoke-virtual {v7}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.motorola.blur.setup.changes.ACTION_CHANGED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "account_id"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    iget-object v7, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$1;->this$0:Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;

    invoke-virtual {v7, v4}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    const/16 v8, 0xff

    goto :goto_1
.end method

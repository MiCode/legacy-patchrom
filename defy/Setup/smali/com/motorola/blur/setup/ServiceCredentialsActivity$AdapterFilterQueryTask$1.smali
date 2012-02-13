.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask$1;
.super Ljava/lang/Object;
.source "ServiceCredentialsActivity.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/FilterQueryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask$1;->this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9
    .parameter "constraint"

    .prologue
    const/4 v5, 0x0

    .line 519
    const/4 v6, 0x0

    .line 520
    .local v6, buffer:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 521
    .local v4, args:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #buffer:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .restart local v6       #buffer:Ljava/lang/StringBuilder;
    const-string v0, "UPPER("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v0, "email_address"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v0, ") GLOB ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, filter:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v8, v4, v0

    .line 531
    .end local v8           #filter:Ljava/lang/String;
    .restart local v4       #args:[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask$1;->this$1:Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI_UNIQUE_EMAILS:Landroid/net/Uri;

    invoke-static {}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$600()[Ljava/lang/String;

    move-result-object v2

    if-nez v6, :cond_1

    move-object v3, v5

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 534
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7

    .line 531
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

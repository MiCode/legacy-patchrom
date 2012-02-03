.class Lcom/android/phone/SimContacts$ImportAllSimContactsThread;
.super Ljava/lang/Thread;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportAllSimContactsThread"
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    .line 101
    const-string v0, "ImportAllSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 102
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 121
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 124
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 126
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "SimContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown button event has come: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v0, emptyContentValues:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v2}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 109
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, v2, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 110
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, v2, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, v2, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;

    move-result-object v3

    #calls: Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    invoke-static {v2, v1, v3}, Lcom/android/phone/SimContacts;->access$100(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 112
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 116
    iget-object v2, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v2}, Lcom/android/phone/SimContacts;->finish()V

    .line 117
    return-void
.end method

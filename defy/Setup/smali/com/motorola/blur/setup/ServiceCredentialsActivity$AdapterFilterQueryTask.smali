.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;
.super Landroid/os/AsyncTask;
.source "ServiceCredentialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterFilterQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/FilterQueryProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountAdapter:Landroid/widget/SimpleCursorAdapter;

.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Landroid/widget/SimpleCursorAdapter;)V
    .locals 0
    .parameter
    .parameter "accountAdapter"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;->mAccountAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 512
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/widget/FilterQueryProvider;
    .locals 1
    .parameter "params"

    .prologue
    .line 516
    new-instance v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask$1;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 506
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/FilterQueryProvider;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/widget/FilterQueryProvider;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;->mAccountAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 542
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 506
    check-cast p1, Landroid/widget/FilterQueryProvider;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;->onPostExecute(Landroid/widget/FilterQueryProvider;)V

    return-void
.end method

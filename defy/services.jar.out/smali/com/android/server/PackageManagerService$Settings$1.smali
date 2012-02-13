.class Lcom/android/server/PackageManagerService$Settings$1;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/PackageManagerService$PreferredActivity;",
        "Lcom/android/server/PackageManagerService$PreferredActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService$Settings;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService$Settings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PackageManagerService$Settings$1;->this$0:Lcom/android/server/PackageManagerService$Settings;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    check-cast p3, Lcom/android/server/PackageManagerService$PreferredActivity;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$Settings$1;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/PackageManagerService$PreferredActivity;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/PackageManagerService$PreferredActivity;)V
    .locals 2
    .parameter "out"
    .parameter "prefix"
    .parameter "filter"

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p3, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " match=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p3, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Selected from:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p3, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/server/PackageManagerService$PreferredActivity;->mSetComponents:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, Lcom/android/server/PackageManagerService$PreferredActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService$Settings$1;->packageForFilter(Lcom/android/server/PackageManagerService$PreferredActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Lcom/android/server/PackageManagerService$PreferredActivity;)Ljava/lang/String;
    .locals 1
    .parameter "filter"

    .prologue
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

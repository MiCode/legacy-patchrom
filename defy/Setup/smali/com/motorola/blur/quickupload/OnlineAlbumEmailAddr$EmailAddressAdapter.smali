.class public Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "OnlineAlbumEmailAddr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmailAddressAdapter"
.end annotation


# static fields
.field public static final DATA_INDEX:I = 0x2

.field public static final NAME_INDEX:I = 0x1

.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC, display_name"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;

    .line 119
    const v0, 0x7f03004b

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 120
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 134
    const v2, 0x7f0b011d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, text1:Landroid/widget/TextView;
    const v2, 0x7f0b011e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, text2:Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 125
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, address:Ljava/lang/String;
    new-instance v2, Lcom/motorola/blur/util/mime/Address;

    invoke-direct {v2, v0, v1}, Lcom/motorola/blur/util/mime/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/blur/util/mime/Address;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .parameter "constraint"

    .prologue
    .line 143
    const/4 v3, 0x0

    .line 145
    .local v3, where:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, filter:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v7, s:Ljava/lang/StringBuilder;
    const-string v0, "(display_name LIKE "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v0, ") OR (data1 LIKE "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .end local v6           #filter:Ljava/lang/String;
    .end local v7           #s:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->access$000()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "times_contacted DESC, display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

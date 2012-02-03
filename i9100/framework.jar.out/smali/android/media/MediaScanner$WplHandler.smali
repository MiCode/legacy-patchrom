.class Landroid/media/MediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field index:I

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaScanner;

.field uri:Landroid/net/Uri;

.field values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    .line 3076
    iput-object p1, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3073
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner$WplHandler;->values:Landroid/content/ContentValues;

    .line 3074
    const/4 v4, 0x0

    iput v4, p0, Landroid/media/MediaScanner$WplHandler;->index:I

    .line 3077
    iput-object p2, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 3078
    iput-object p3, p0, Landroid/media/MediaScanner$WplHandler;->uri:Landroid/net/Uri;

    .line 3080
    new-instance v2, Landroid/sax/RootElement;

    const-string/jumbo v4, "smil"

    invoke-direct {v2, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 3081
    .local v2, root:Landroid/sax/RootElement;
    const-string v4, "body"

    invoke-virtual {v2, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 3082
    .local v0, body:Landroid/sax/Element;
    const-string/jumbo v4, "seq"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 3083
    .local v3, seq:Landroid/sax/Element;
    const-string/jumbo v4, "media"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 3084
    .local v1, media:Landroid/sax/Element;
    invoke-virtual {v1, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 3086
    invoke-virtual {v2}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 3087
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 3100
    return-void
.end method

.method getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 3103
    iget-object v0, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "attributes"

    .prologue
    .line 3090
    const-string v0, ""

    const-string/jumbo v2, "src"

    invoke-interface {p1, v0, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3091
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3092
    iget-object v0, p0, Landroid/media/MediaScanner$WplHandler;->values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3093
    iget-object v0, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    iget-object v2, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/MediaScanner$WplHandler;->uri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/media/MediaScanner$WplHandler;->values:Landroid/content/ContentValues;

    iget v5, p0, Landroid/media/MediaScanner$WplHandler;->index:I

    #calls: Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    invoke-static/range {v0 .. v5}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3094
    iget v0, p0, Landroid/media/MediaScanner$WplHandler;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/MediaScanner$WplHandler;->index:I

    .line 3097
    :cond_0
    return-void
.end method

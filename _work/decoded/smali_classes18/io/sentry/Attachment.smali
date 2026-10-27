.class public final Lio/sentry/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# static fields
.field private static final DEFAULT_ATTACHMENT_TYPE:Ljava/lang/String; = "event.attachment"

.field private static final VIEW_HIERARCHY_ATTACHMENT_TYPE:Ljava/lang/String; = "event.view_hierarchy"


# instance fields
.field private final addToTransactions:Z

.field private attachmentType:Ljava/lang/String;

.field private final byteProvider:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "[B>;"
        }
    .end annotation
.end field

.field private bytes:[B

.field private final contentType:Ljava/lang/String;

.field private final filename:Ljava/lang/String;

.field private pathname:Ljava/lang/String;

.field private final serializable:Lio/sentry/JsonSerializable;


# direct methods
.method public constructor <init>(Lio/sentry/JsonSerializable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "serializable"    # Lio/sentry/JsonSerializable;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "attachmentType"    # Ljava/lang/String;
    .param p5, "addToTransactions"    # Z

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "event.attachment"

    iput-object v0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Attachment;->bytes:[B

    .line 114
    iput-object p1, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    .line 115
    iput-object v0, p0, Lio/sentry/Attachment;->byteProvider:Ljava/util/concurrent/Callable;

    .line 116
    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 119
    iput-boolean p5, p0, Lio/sentry/Attachment;->addToTransactions:Z

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .line 193
    const-string v4, "event.attachment"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "pathname":Ljava/lang/String;
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "contentType":Ljava/lang/String;
    .local v1, "pathname":Ljava/lang/String;
    .local v2, "filename":Ljava/lang/String;
    .local v3, "contentType":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "attachmentType"    # Ljava/lang/String;
    .param p5, "addToTransactions"    # Z

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "event.attachment"

    iput-object v0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    .line 219
    iput-object v0, p0, Lio/sentry/Attachment;->byteProvider:Ljava/util/concurrent/Callable;

    .line 220
    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    .line 221
    iput-object p4, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 222
    iput-boolean p5, p0, Lio/sentry/Attachment;->addToTransactions:Z

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "addToTransactions"    # Z

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "event.attachment"

    iput-object v0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    .line 246
    iput-object v0, p0, Lio/sentry/Attachment;->byteProvider:Ljava/util/concurrent/Callable;

    .line 247
    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    .line 248
    iput-boolean p4, p0, Lio/sentry/Attachment;->addToTransactions:Z

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "addToTransactions"    # Z
    .param p5, "attachmentType"    # Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "event.attachment"

    iput-object v0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 272
    iput-object p1, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    .line 273
    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    .line 275
    iput-object v0, p0, Lio/sentry/Attachment;->byteProvider:Ljava/util/concurrent/Callable;

    .line 276
    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    .line 277
    iput-boolean p4, p0, Lio/sentry/Attachment;->addToTransactions:Z

    .line 278
    iput-object p5, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "attachmentType"    # Ljava/lang/String;
    .param p5, "addToTransactions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "[B>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 138
    .local p1, "byteProvider":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "event.attachment"

    iput-object v0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Attachment;->bytes:[B

    .line 140
    iput-object v0, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    .line 141
    iput-object p1, p0, Lio/sentry/Attachment;->byteProvider:Ljava/util/concurrent/Callable;

    .line 142
    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 145
    iput-boolean p5, p0, Lio/sentry/Attachment;->addToTransactions:Z

    .line 146
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "filename"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "attachmentType"    # Ljava/lang/String;
    .param p5, "addToTransactions"    # Z

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "event.attachment"

    iput-object v0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lio/sentry/Attachment;->bytes:[B

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    .line 89
    iput-object v0, p0, Lio/sentry/Attachment;->byteProvider:Ljava/util/concurrent/Callable;

    .line 90
    iput-object p2, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    .line 93
    iput-boolean p5, p0, Lio/sentry/Attachment;->addToTransactions:Z

    .line 94
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "addToTransactions"    # Z

    .line 68
    const-string v4, "event.attachment"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .end local p1    # "bytes":[B
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "addToTransactions":Z
    .local v1, "bytes":[B
    .local v2, "filename":Ljava/lang/String;
    .local v3, "contentType":Ljava/lang/String;
    .local v5, "addToTransactions":Z
    invoke-direct/range {v0 .. v5}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public static fromByteProvider(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/Attachment;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "addToTransactions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "[B>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/sentry/Attachment;"
        }
    .end annotation

    .line 371
    .local p0, "provider":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<[B>;"
    new-instance v0, Lio/sentry/Attachment;

    const-string v4, "event.attachment"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .end local p0    # "provider":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<[B>;"
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "contentType":Ljava/lang/String;
    .end local p3    # "addToTransactions":Z
    .local v1, "provider":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<[B>;"
    .local v2, "filename":Ljava/lang/String;
    .local v3, "contentType":Ljava/lang/String;
    .local v5, "addToTransactions":Z
    invoke-direct/range {v0 .. v5}, Lio/sentry/Attachment;-><init>(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static fromScreenshot([B)Lio/sentry/Attachment;
    .locals 4
    .param p0, "screenshotBytes"    # [B

    .line 357
    new-instance v0, Lio/sentry/Attachment;

    const-string v1, "image/png"

    const/4 v2, 0x0

    const-string v3, "screenshot.png"

    invoke-direct {v0, p0, v3, v1, v2}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static fromThreadDump([B)Lio/sentry/Attachment;
    .locals 4
    .param p0, "bytes"    # [B

    .line 397
    new-instance v0, Lio/sentry/Attachment;

    const-string v1, "text/plain"

    const/4 v2, 0x0

    const-string v3, "thread-dump.txt"

    invoke-direct {v0, p0, v3, v1, v2}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static fromTombstone([B)Lio/sentry/Attachment;
    .locals 4
    .param p0, "bytes"    # [B

    .line 407
    new-instance v0, Lio/sentry/Attachment;

    const-string v1, "application/x-protobuf"

    const/4 v2, 0x0

    const-string v3, "tombstone.pb"

    invoke-direct {v0, p0, v3, v1, v2}, Lio/sentry/Attachment;-><init>([BLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static fromViewHierarchy(Lio/sentry/protocol/ViewHierarchy;)Lio/sentry/Attachment;
    .locals 6
    .param p0, "viewHierarchy"    # Lio/sentry/protocol/ViewHierarchy;

    .line 382
    new-instance v0, Lio/sentry/Attachment;

    const-string v4, "event.view_hierarchy"

    const/4 v5, 0x0

    const-string v2, "view-hierarchy.json"

    const-string v3, "application/json"

    move-object v1, p0

    .end local p0    # "viewHierarchy":Lio/sentry/protocol/ViewHierarchy;
    .local v1, "viewHierarchy":Lio/sentry/protocol/ViewHierarchy;
    invoke-direct/range {v0 .. v5}, Lio/sentry/Attachment;-><init>(Lio/sentry/JsonSerializable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public getAttachmentType()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lio/sentry/Attachment;->attachmentType:Ljava/lang/String;

    return-object v0
.end method

.method public getByteProvider()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "[B>;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lio/sentry/Attachment;->byteProvider:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    .line 287
    iget-object v0, p0, Lio/sentry/Attachment;->bytes:[B

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lio/sentry/Attachment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lio/sentry/Attachment;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPathname()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lio/sentry/Attachment;->pathname:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializable()Lio/sentry/JsonSerializable;
    .locals 1

    .line 296
    iget-object v0, p0, Lio/sentry/Attachment;->serializable:Lio/sentry/JsonSerializable;

    return-object v0
.end method

.method isAddToTransactions()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lio/sentry/Attachment;->addToTransactions:Z

    return v0
.end method

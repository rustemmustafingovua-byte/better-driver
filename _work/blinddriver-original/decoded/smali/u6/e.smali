.class public final Lu6/e;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final l:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lu6/e;->l:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lu6/e;->l:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lu6/e;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

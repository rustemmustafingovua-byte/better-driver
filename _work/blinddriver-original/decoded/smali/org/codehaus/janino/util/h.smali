.class public abstract Lorg/codehaus/janino/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/codehaus/janino/util/h;->a:S

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/h;->b(Ljava/io/DataOutputStream;)V

    iget-short p0, p0, Lorg/codehaus/janino/util/h;->a:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public abstract b(Ljava/io/DataOutputStream;)V
.end method

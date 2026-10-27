.class public final Lorg/codehaus/janino/util/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/janino/util/b0;


# instance fields
.field public final a:S

.field public final b:S


# direct methods
.method public constructor <init>(SS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/codehaus/janino/util/c0;->a:S

    iput-short p2, p0, Lorg/codehaus/janino/util/c0;->b:S

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 1

    iget-short v0, p0, Lorg/codehaus/janino/util/c0;->a:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short p0, p0, Lorg/codehaus/janino/util/c0;->b:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final b()B
    .locals 0

    const/16 p0, 0x65

    return p0
.end method

.class public final Lorg/codehaus/janino/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/janino/util/b0;


# instance fields
.field public final a:B

.field public final b:S


# direct methods
.method public constructor <init>(BS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/codehaus/janino/util/i;->a:B

    iput-short p2, p0, Lorg/codehaus/janino/util/i;->b:S

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 0

    iget-short p0, p0, Lorg/codehaus/janino/util/i;->b:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final b()B
    .locals 0

    iget-byte p0, p0, Lorg/codehaus/janino/util/i;->a:B

    return p0
.end method

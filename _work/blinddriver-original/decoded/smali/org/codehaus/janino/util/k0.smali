.class public final Lorg/codehaus/janino/util/k0;
.super Lorg/codehaus/janino/util/p0;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/p0;-><init>(I)V

    iput p2, p0, Lorg/codehaus/janino/util/k0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/k0;->b:I

    rsub-int v0, v0, 0xfb

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p0, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chop_frame(offsetDelta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locals-="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/codehaus/janino/util/k0;->b:I

    const-string v1, ", stack=[])"

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

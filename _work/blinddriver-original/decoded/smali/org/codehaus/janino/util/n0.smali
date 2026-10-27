.class public final Lorg/codehaus/janino/util/n0;
.super Lorg/codehaus/janino/util/p0;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lorg/codehaus/janino/util/n0;->b:I

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/p0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/n0;->b:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xfb

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p0, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void

    :pswitch_0
    iget p0, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/janino/util/n0;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "same_frame_extended(offsetDelta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codehaus/janino/util/p0;->a:I

    const-string v1, ", stack=[])"

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "same_frame (offsetDelta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/codehaus/janino/util/p0;->a:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

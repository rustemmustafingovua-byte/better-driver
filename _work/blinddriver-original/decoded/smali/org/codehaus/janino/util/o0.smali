.class public final Lorg/codehaus/janino/util/o0;
.super Lorg/codehaus/janino/util/p0;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lorg/codehaus/janino/util/o0;->b:I

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/p0;-><init>(I)V

    iput-object p3, p0, Lorg/codehaus/janino/util/o0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 3

    iget v0, p0, Lorg/codehaus/janino/util/o0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/codehaus/janino/util/o0;->c:Ljava/lang/Object;

    check-cast v0, [Lorg/codehaus/janino/util/r0;

    array-length v1, v0

    add-int/lit16 v1, v1, 0xfb

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p0, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lorg/codehaus/janino/util/r0;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    const/16 v0, 0xf7

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object p0, p0, Lorg/codehaus/janino/util/o0;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/r0;

    invoke-interface {p0, p1}, Lorg/codehaus/janino/util/r0;->a(Ljava/io/DataOutputStream;)V

    return-void

    :pswitch_1
    iget v0, p0, Lorg/codehaus/janino/util/p0;->a:I

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object p0, p0, Lorg/codehaus/janino/util/o0;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/r0;

    invoke-interface {p0, p1}, Lorg/codehaus/janino/util/r0;->a(Ljava/io/DataOutputStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/janino/util/o0;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "append_frame(offsetDelta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locals+="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codehaus/janino/util/o0;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/codehaus/janino/util/r0;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ", stack=[])"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "same_locals_1_stack_item_frame_extended(offsetDelta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stack=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codehaus/janino/util/o0;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/r0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "])"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "same_locals_1_stack_item_frame(offsetDelta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codehaus/janino/util/p0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stack=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/codehaus/janino/util/o0;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/r0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "])"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

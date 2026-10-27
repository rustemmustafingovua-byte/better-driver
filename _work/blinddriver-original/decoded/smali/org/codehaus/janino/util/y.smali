.class public final Lorg/codehaus/janino/util/y;
.super Lorg/codehaus/janino/util/h;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:S


# direct methods
.method public synthetic constructor <init>(SSI)V
    .locals 0

    iput p3, p0, Lorg/codehaus/janino/util/y;->b:I

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/h;-><init>(S)V

    iput-short p2, p0, Lorg/codehaus/janino/util/y;->c:S

    return-void
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/y;->b:I

    packed-switch v0, :pswitch_data_0

    iget-short p0, p0, Lorg/codehaus/janino/util/y;->c:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void

    :pswitch_0
    iget-short p0, p0, Lorg/codehaus/janino/util/y;->c:S

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lorg/codehaus/janino/util/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/janino/util/r0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/codehaus/janino/util/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 0

    iget p0, p0, Lorg/codehaus/janino/util/j0;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :pswitch_0
    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :pswitch_1
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :pswitch_2
    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :pswitch_3
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :pswitch_4
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :pswitch_5
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lorg/codehaus/janino/util/j0;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lorg/codehaus/janino/util/j0;->a:I

    packed-switch v0, :pswitch_data_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    if-ne p1, p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_3
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return p0

    :pswitch_4
    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    return p0

    :pswitch_5
    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lorg/codehaus/janino/util/j0;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x6

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lorg/codehaus/janino/util/j0;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "uninitializedThis"

    return-object p0

    :pswitch_0
    const-string p0, "null"

    return-object p0

    :pswitch_1
    const-string p0, "long"

    return-object p0

    :pswitch_2
    const-string p0, "double"

    return-object p0

    :pswitch_3
    const-string p0, "float"

    return-object p0

    :pswitch_4
    const-string p0, "int"

    return-object p0

    :pswitch_5
    const-string p0, "top"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

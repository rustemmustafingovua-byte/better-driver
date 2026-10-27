.class public final Lorg/codehaus/janino/util/s0;
.super Lorg/codehaus/janino/util/h;
.source "SourceFile"


# static fields
.field public static final d:Lorg/codehaus/janino/util/j0;

.field public static final e:Lorg/codehaus/janino/util/j0;

.field public static final f:Lorg/codehaus/janino/util/j0;

.field public static final g:Lorg/codehaus/janino/util/j0;

.field public static final h:Lorg/codehaus/janino/util/j0;

.field public static final i:Lorg/codehaus/janino/util/j0;

.field public static final j:Lorg/codehaus/janino/util/j0;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/codehaus/janino/util/j0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/janino/util/j0;-><init>(I)V

    sput-object v0, Lorg/codehaus/janino/util/s0;->d:Lorg/codehaus/janino/util/j0;

    new-instance v0, Lorg/codehaus/janino/util/j0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/codehaus/janino/util/j0;-><init>(I)V

    sput-object v0, Lorg/codehaus/janino/util/s0;->e:Lorg/codehaus/janino/util/j0;

    new-instance v0, Lorg/codehaus/janino/util/j0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/codehaus/janino/util/j0;-><init>(I)V

    sput-object v0, Lorg/codehaus/janino/util/s0;->f:Lorg/codehaus/janino/util/j0;

    new-instance v0, Lorg/codehaus/janino/util/j0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/codehaus/janino/util/j0;-><init>(I)V

    sput-object v0, Lorg/codehaus/janino/util/s0;->g:Lorg/codehaus/janino/util/j0;

    new-instance v0, Lorg/codehaus/janino/util/j0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/codehaus/janino/util/j0;-><init>(I)V

    sput-object v0, Lorg/codehaus/janino/util/s0;->h:Lorg/codehaus/janino/util/j0;

    new-instance v0, Lorg/codehaus/janino/util/j0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/codehaus/janino/util/j0;-><init>(I)V

    sput-object v0, Lorg/codehaus/janino/util/s0;->i:Lorg/codehaus/janino/util/j0;

    new-instance v0, Lorg/codehaus/janino/util/j0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/codehaus/janino/util/j0;-><init>(I)V

    sput-object v0, Lorg/codehaus/janino/util/s0;->j:Lorg/codehaus/janino/util/j0;

    return-void
.end method

.method public synthetic constructor <init>(SLjava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lorg/codehaus/janino/util/s0;->b:I

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/h;-><init>(S)V

    iput-object p2, p0, Lorg/codehaus/janino/util/s0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 4

    iget v0, p0, Lorg/codehaus/janino/util/s0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/codehaus/janino/util/s0;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/codehaus/janino/util/h0;

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget-short v3, v2, Lorg/codehaus/janino/util/h0;->a:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v3, v2, Lorg/codehaus/janino/util/h0;->b:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v3, v2, Lorg/codehaus/janino/util/h0;->c:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v3, v2, Lorg/codehaus/janino/util/h0;->d:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v2, v2, Lorg/codehaus/janino/util/h0;->e:S

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lorg/codehaus/janino/util/s0;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/codehaus/janino/util/g0;

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-short v3, v2, Lorg/codehaus/janino/util/g0;->a:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v2, v2, Lorg/codehaus/janino/util/g0;->b:S

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lorg/codehaus/janino/util/s0;->c:Ljava/lang/Object;

    check-cast p0, [S

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    aget-short v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :pswitch_2
    iget-object p0, p0, Lorg/codehaus/janino/util/s0;->c:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/b0;

    invoke-interface {p0}, Lorg/codehaus/janino/util/b0;->b()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-interface {p0, p1}, Lorg/codehaus/janino/util/b0;->a(Ljava/io/DataOutputStream;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lorg/codehaus/janino/util/s0;->c:Ljava/lang/Object;

    check-cast p0, [Lorg/codehaus/janino/util/p0;

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lorg/codehaus/janino/util/p0;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

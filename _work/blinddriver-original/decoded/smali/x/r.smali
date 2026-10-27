.class public final Lx/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld1/c0;


# direct methods
.method public synthetic constructor <init>(Ld1/c0;I)V
    .locals 0

    iput p2, p0, Lx/r;->a:I

    iput-object p1, p0, Lx/r;->b:Ld1/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lx/r;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lw/l;

    iget-object p2, p2, Lw/l;->i:Ljava/lang/Object;

    iget-object p0, p0, Lx/r;->b:Ld1/c0;

    invoke-virtual {p0, p2}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Lw/l;

    iget-object p1, p1, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p2, Lw/l;

    iget-object p2, p2, Lw/l;->i:Ljava/lang/Object;

    iget-object p0, p0, Lx/r;->b:Ld1/c0;

    invoke-virtual {p0, p2}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Lw/l;

    iget-object p1, p1, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lw/l;

    iget-object p1, p1, Lw/l;->i:Ljava/lang/Object;

    iget-object p0, p0, Lx/r;->b:Ld1/c0;

    invoke-virtual {p0, p1}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lw/l;

    iget-object p2, p2, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lw/l;

    iget-object p1, p1, Lw/l;->i:Ljava/lang/Object;

    iget-object p0, p0, Lx/r;->b:Ld1/c0;

    invoke-virtual {p0, p1}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lw/l;

    iget-object p2, p2, Lw/l;->i:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

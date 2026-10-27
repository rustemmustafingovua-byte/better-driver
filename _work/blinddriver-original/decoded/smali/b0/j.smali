.class public final Lb0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# static fields
.field public static final b:Lb0/j;

.field public static final c:Lb0/j;

.field public static final d:Ln/p1;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lb0/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb0/j;-><init>(I)V

    sput-object v0, Lb0/j;->b:Lb0/j;

    new-instance v0, Lb0/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb0/j;-><init>(I)V

    sput-object v0, Lb0/j;->c:Lb0/j;

    new-instance v0, Ln/p1;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ln/p1;-><init>(I)V

    sput-object v0, Lb0/j;->d:Ln/p1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lb0/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 3

    iget p0, p0, Lb0/j;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result p0

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p2

    sget-object p3, Lb0/j;->d:Ln/p1;

    sget-object p4, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p0, p2, p4, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/q0;

    invoke-interface {v2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result p2

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p3

    new-instance p4, Lb0/i;

    const/4 v0, 0x0

    invoke-direct {p4, v0, p0}, Lb0/i;-><init>(ILjava/util/ArrayList;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, p3, p0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

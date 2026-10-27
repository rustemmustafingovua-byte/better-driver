.class public final Lu/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# static fields
.field public static final b:Lu/k;

.field public static final c:Lu/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lu/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/k;-><init>(I)V

    sput-object v0, Lu/k;->b:Lu/k;

    new-instance v0, Lu/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu/k;-><init>(I)V

    sput-object v0, Lu/k;->c:Lu/k;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lu/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 1

    iget p0, p0, Lu/k;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p3, p4}, Lb3/a;->f(J)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    invoke-static {p3, p4}, Lb3/a;->e(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p2

    :cond_1
    new-instance p3, Ln/p1;

    const/16 p4, 0x18

    invoke-direct {p3, p4}, Ln/p1;-><init>(I)V

    sget-object p4, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p0, p2, p4, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result p0

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result p2

    new-instance p3, Ln/p1;

    const/16 p4, 0x18

    invoke-direct {p3, p4}, Ln/p1;-><init>(I)V

    sget-object p4, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p0, p2, p4, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

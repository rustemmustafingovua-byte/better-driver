.class public final Lu/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/e;


# static fields
.field public static final b:Lu/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/n;-><init>(I)V

    sput-object v0, Lu/n;->b:Lu/n;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lu/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(ILjava/lang/String;)Lu/a;
    .locals 1

    sget-object v0, Lu/k1;->v:Ljava/util/WeakHashMap;

    new-instance v0, Lu/a;

    invoke-direct {v0, p0, p1}, Lu/a;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static final d(ILjava/lang/String;)Lu/i1;
    .locals 2

    sget-object p0, Lu/k1;->v:Ljava/util/WeakHashMap;

    new-instance p0, Lu/i1;

    new-instance v0, Lu/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lu/c0;-><init>(IIII)V

    invoke-direct {p0, v0, p1}, Lu/i1;-><init>(Lu/c0;Ljava/lang/String;)V

    return-object p0
.end method

.method public static f(Landroid/view/View;)Lu/k1;
    .locals 2

    sget-object v0, Lu/k1;->v:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lu/k1;

    invoke-direct {v1, p0}, Lu/k1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v1, Lu/k1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b(Lb3/c;I[ILb3/m;[I)V
    .locals 0

    iget p0, p0, Lu/n;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lb3/m;->l:Lb3/m;

    if-ne p4, p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p3, p5, p0}, Lu/h;->b([I[IZ)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p2, p3, p5, p0}, Lu/h;->c(I[I[IZ)V

    :goto_0
    return-void

    :pswitch_0
    sget-object p0, Lb3/m;->l:Lb3/m;

    if-ne p4, p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p2, p3, p5, p0}, Lu/h;->c(I[I[IZ)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    invoke-static {p3, p5, p0}, Lu/h;->b([I[IZ)V

    :goto_1
    return-void

    :pswitch_1
    const/4 p0, 0x0

    invoke-static {p2, p3, p5, p0}, Lu/h;->c(I[I[IZ)V

    return-void

    :pswitch_2
    const/4 p0, 0x0

    invoke-static {p3, p5, p0}, Lu/h;->b([I[IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lf1/j;)Lf1/r;
    .locals 0

    new-instance p0, Lu/i;

    invoke-direct {p0, p1}, Lu/i;-><init>(Lf1/j;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lu/n;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Arrangement#Start"

    return-object p0

    :pswitch_1
    const-string p0, "Arrangement#End"

    return-object p0

    :pswitch_2
    const-string p0, "AbsoluteArrangement#Right"

    return-object p0

    :pswitch_3
    const-string p0, "AbsoluteArrangement#Left"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

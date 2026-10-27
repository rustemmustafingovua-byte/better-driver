.class public final Lv8/c;
.super Lv8/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk9/a;


# instance fields
.field public final synthetic p:I


# direct methods
.method public constructor <init>(Lv8/f;I)V
    .locals 0

    iput p2, p0, Lv8/c;->p:I

    const-string p2, "map"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8/e;->o:Ljava/lang/Object;

    const/4 p2, -0x1

    iput p2, p0, Lv8/e;->m:I

    iget p1, p1, Lv8/f;->s:I

    iput p1, p0, Lv8/e;->n:I

    invoke-virtual {p0}, Lv8/e;->c()V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lv8/c;->p:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lv8/e;->b()V

    iget v0, p0, Lv8/e;->l:I

    iget-object v1, p0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v1, Lv8/f;

    iget v2, v1, Lv8/f;->q:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lv8/e;->l:I

    iput v0, p0, Lv8/e;->m:I

    iget-object v0, v1, Lv8/f;->m:[Ljava/lang/Object;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v1, p0, Lv8/e;->m:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lv8/e;->c()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lv8/e;->b()V

    iget v0, p0, Lv8/e;->l:I

    iget-object v1, p0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v1, Lv8/f;

    iget v2, v1, Lv8/f;->q:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lv8/e;->l:I

    iput v0, p0, Lv8/e;->m:I

    iget-object v1, v1, Lv8/f;->l:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lv8/e;->c()V

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lv8/e;->b()V

    iget v0, p0, Lv8/e;->l:I

    iget-object v1, p0, Lv8/e;->o:Ljava/lang/Object;

    check-cast v1, Lv8/f;

    iget v2, v1, Lv8/f;->q:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lv8/e;->l:I

    iput v0, p0, Lv8/e;->m:I

    new-instance v2, Lv8/d;

    invoke-direct {v2, v1, v0}, Lv8/d;-><init>(Lv8/f;I)V

    invoke-virtual {p0}, Lv8/e;->c()V

    return-object v2

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

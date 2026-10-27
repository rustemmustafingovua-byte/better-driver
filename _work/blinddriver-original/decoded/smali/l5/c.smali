.class public final Ll5/c;
.super Le1/b;
.source "SourceFile"

# interfaces
.implements Ll5/b;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lpb/m;I)V
    .locals 0

    iput p2, p0, Ll5/c;->b:I

    invoke-direct {p0, p1}, Le1/b;-><init>(Lpb/m;)V

    return-void
.end method

.method public static e(Lb6/q;)Lpb/a;
    .locals 13

    invoke-virtual {p0}, Lb6/q;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    new-instance v0, Lpb/a;

    invoke-virtual {p0, v2}, Lb6/q;->y(I)Lb6/q;

    move-result-object v2

    invoke-virtual {v2}, Lb6/q;->k()D

    move-result-wide v2

    invoke-virtual {p0, v1}, Lb6/q;->y(I)Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->k()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lpb/a;-><init>(DD)V

    return-object v0

    :cond_0
    new-instance v6, Lpb/a;

    invoke-virtual {p0, v2}, Lb6/q;->y(I)Lb6/q;

    move-result-object v0

    invoke-virtual {v0}, Lb6/q;->k()D

    move-result-wide v7

    invoke-virtual {p0, v1}, Lb6/q;->y(I)Lb6/q;

    move-result-object v0

    invoke-virtual {v0}, Lb6/q;->k()D

    move-result-wide v9

    invoke-virtual {p0, v3}, Lb6/q;->y(I)Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->k()D

    move-result-wide v11

    invoke-direct/range {v6 .. v12}, Lpb/a;-><init>(DDD)V

    return-object v6
.end method

.method public static f(Lb6/q;)[Lpb/a;
    .locals 3

    invoke-virtual {p0}, Lb6/q;->size()I

    move-result v0

    new-array v0, v0, [Lpb/a;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lb6/q;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lb6/q;->y(I)Lb6/q;

    move-result-object v2

    invoke-static {v2}, Ll5/c;->e(Lb6/q;)Lpb/a;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lb6/q;)Lpb/i;
    .locals 3

    iget v0, p0, Ll5/c;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll5/c;->g(Lb6/q;)Lpb/x;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Lpb/m;

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    invoke-static {p1}, Ll5/c;->e(Lb6/q;)Lpb/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Lpb/m;

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    invoke-static {p1}, Ll5/c;->f(Lb6/q;)[Lpb/a;

    move-result-object p1

    iget-object v0, p0, Lpb/m;->m:Lqb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lqb/a;

    invoke-direct {v0, p1}, Lqb/a;-><init>([Lpb/a;)V

    invoke-virtual {p0, v0}, Lpb/m;->c(Lqb/a;)Lpb/u;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Lpb/m;

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    invoke-virtual {p1}, Lb6/q;->size()I

    move-result v0

    new-array v0, v0, [Lpb/q;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lb6/q;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lb6/q;->y(I)Lb6/q;

    move-result-object v2

    invoke-static {v2}, Ll5/c;->f(Lb6/q;)[Lpb/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lpb/m;->a([Lpb/a;)Lpb/q;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lpb/t;

    invoke-direct {p1, v0, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p1

    :pswitch_3
    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Lpb/m;

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    invoke-static {p1}, Ll5/c;->f(Lb6/q;)[Lpb/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpb/m;->a([Lpb/a;)Lpb/q;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lb6/q;)Lpb/x;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb6/q;->y(I)Lb6/q;

    move-result-object v0

    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Lpb/m;

    invoke-static {v0}, Ll5/c;->f(Lb6/q;)[Lpb/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpb/m;->b([Lpb/a;)Lpb/s;

    move-result-object v0

    invoke-virtual {p1}, Lb6/q;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    new-array v2, v2, [Lpb/s;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v3}, Lb6/q;->y(I)Lb6/q;

    move-result-object v5

    invoke-static {v5}, Ll5/c;->f(Lb6/q;)[Lpb/a;

    move-result-object v5

    invoke-virtual {p0, v5}, Lpb/m;->b([Lpb/a;)Lpb/s;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lpb/x;

    invoke-direct {p1, v0, v2, p0}, Lpb/x;-><init>(Lpb/s;[Lpb/s;Lpb/m;)V

    return-object p1
.end method

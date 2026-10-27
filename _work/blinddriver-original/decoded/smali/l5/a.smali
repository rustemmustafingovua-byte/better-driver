.class public final Ll5/a;
.super Le1/b;
.source "SourceFile"

# interfaces
.implements Ll5/b;


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lpb/m;I)V
    .locals 1

    iput p2, p0, Ll5/a;->b:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Le1/b;-><init>(Lpb/m;)V

    return-void

    .line 1
    :pswitch_0
    invoke-direct {p0, p1}, Le1/b;-><init>(Lpb/m;)V

    .line 2
    new-instance p2, Ll5/c;

    const/4 v0, 0x4

    .line 3
    invoke-direct {p2, p1, v0}, Ll5/c;-><init>(Lpb/m;I)V

    .line 4
    iput-object p2, p0, Ll5/a;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lpb/m;Ll5/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll5/a;->b:I

    .line 5
    invoke-direct {p0, p1}, Le1/b;-><init>(Lpb/m;)V

    .line 6
    iput-object p2, p0, Ll5/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lb6/q;)Lpb/i;
    .locals 5

    iget v0, p0, Ll5/a;->b:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    iget-object v0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast v0, Lpb/m;

    invoke-virtual {p1}, Lb6/q;->size()I

    move-result v1

    new-array v1, v1, [Lpb/x;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lb6/q;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Ll5/a;->c:Ljava/lang/Object;

    check-cast v3, Ll5/c;

    invoke-virtual {p1, v2}, Lb6/q;->y(I)Lb6/q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll5/c;->g(Lb6/q;)Lpb/x;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lpb/v;

    invoke-direct {p0, v1, v0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p0

    :pswitch_0
    iget-object v0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast v0, Lpb/m;

    const-string v1, "geometries"

    invoke-virtual {p1, v1}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object p1

    invoke-virtual {p1}, Lb6/q;->size()I

    move-result v1

    new-array v1, v1, [Lpb/i;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Lb6/q;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Ll5/a;->c:Ljava/lang/Object;

    check-cast v3, Ll5/a;

    invoke-virtual {p1, v2}, Lb6/q;->y(I)Lb6/q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll5/a;->a(Lb6/q;)Lpb/i;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lpb/j;

    invoke-direct {p0, v1, v0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p0

    :pswitch_1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lb6/q;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v0

    invoke-virtual {v0}, Lb6/q;->q()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Ll5/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll5/b;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Ll5/b;->a(Lb6/q;)Lpb/i;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lb6/p;

    const-string p1, "Invalid geometry type: "

    invoke-static {p1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

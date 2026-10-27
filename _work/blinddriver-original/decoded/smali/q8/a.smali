.class public final Lq8/a;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final m:Lq8/a;

.field public static final n:Lq8/a;

.field public static final o:Lq8/a;

.field public static final p:Lq8/a;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lq8/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq8/a;-><init>(II)V

    sput-object v0, Lq8/a;->m:Lq8/a;

    new-instance v0, Lq8/a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq8/a;-><init>(II)V

    sput-object v0, Lq8/a;->n:Lq8/a;

    new-instance v0, Lq8/a;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lq8/a;-><init>(II)V

    sput-object v0, Lq8/a;->o:Lq8/a;

    new-instance v0, Lq8/a;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lq8/a;-><init>(II)V

    sput-object v0, Lq8/a;->p:Lq8/a;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lq8/a;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lq8/a;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lr9/g;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    check-cast p0, Lr9/e;

    invoke-virtual {p0, p1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :pswitch_0
    check-cast p1, Lr8/m;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lr8/m;->a()Lr8/i;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lq8/d;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lq8/d;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lq8/c;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

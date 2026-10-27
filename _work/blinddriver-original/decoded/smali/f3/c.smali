.class public final Lf3/c;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# static fields
.field public static final m:Lf3/c;

.field public static final n:Lf3/c;

.field public static final o:Lf3/c;

.field public static final p:Lf3/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lf3/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf3/c;-><init>(II)V

    sput-object v0, Lf3/c;->m:Lf3/c;

    new-instance v0, Lf3/c;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf3/c;-><init>(II)V

    sput-object v0, Lf3/c;->n:Lf3/c;

    new-instance v0, Lf3/c;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lf3/c;-><init>(II)V

    sput-object v0, Lf3/c;->o:Lf3/c;

    new-instance v0, Lf3/c;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lf3/c;-><init>(II)V

    sput-object v0, Lf3/c;->p:Lf3/c;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lf3/c;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lf3/c;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "DEFAULT_TEST_TAG"

    return-object p0

    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

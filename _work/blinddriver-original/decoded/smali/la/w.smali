.class public final enum Lla/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final m:Lla/b;

.field public static final enum n:Lla/w;

.field public static final enum o:Lla/w;

.field public static final enum p:Lla/w;

.field public static final enum q:Lla/w;

.field public static final enum r:Lla/w;

.field public static final enum s:Lla/w;

.field public static final enum t:Lla/w;

.field public static final synthetic u:[Lla/w;


# instance fields
.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lla/w;

    const/4 v1, 0x0

    const-string v2, "http/1.0"

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v3, v1, v2}, Lla/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lla/w;->n:Lla/w;

    new-instance v1, Lla/w;

    const/4 v2, 0x1

    const-string v3, "http/1.1"

    const-string v4, "HTTP_1_1"

    invoke-direct {v1, v4, v2, v3}, Lla/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lla/w;->o:Lla/w;

    new-instance v2, Lla/w;

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    const-string v5, "SPDY_3"

    invoke-direct {v2, v5, v3, v4}, Lla/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lla/w;->p:Lla/w;

    new-instance v3, Lla/w;

    const/4 v4, 0x3

    const-string v5, "h2"

    const-string v6, "HTTP_2"

    invoke-direct {v3, v6, v4, v5}, Lla/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lla/w;->q:Lla/w;

    new-instance v4, Lla/w;

    const/4 v5, 0x4

    const-string v6, "h2_prior_knowledge"

    const-string v7, "H2_PRIOR_KNOWLEDGE"

    invoke-direct {v4, v7, v5, v6}, Lla/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lla/w;->r:Lla/w;

    new-instance v5, Lla/w;

    const/4 v6, 0x5

    const-string v7, "quic"

    const-string v8, "QUIC"

    invoke-direct {v5, v8, v6, v7}, Lla/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lla/w;->s:Lla/w;

    new-instance v6, Lla/w;

    const/4 v7, 0x6

    const-string v8, "h3"

    const-string v9, "HTTP_3"

    invoke-direct {v6, v9, v7, v8}, Lla/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lla/w;->t:Lla/w;

    filled-new-array/range {v0 .. v6}, [Lla/w;

    move-result-object v0

    sput-object v0, Lla/w;->u:[Lla/w;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    new-instance v0, Lla/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lla/w;->m:Lla/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lla/w;->l:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lla/w;
    .locals 1

    const-class v0, Lla/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lla/w;

    return-object p0
.end method

.method public static values()[Lla/w;
    .locals 1

    sget-object v0, Lla/w;->u:[Lla/w;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lla/w;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lla/w;->l:Ljava/lang/String;

    return-object p0
.end method

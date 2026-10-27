.class public final enum Lr5/t0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum m:Lr5/t0;

.field public static final enum n:Lr5/t0;

.field public static final enum o:Lr5/t0;

.field public static final enum p:Lr5/t0;

.field public static final synthetic q:[Lr5/t0;


# instance fields
.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lr5/t0;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr5/t0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr5/t0;->m:Lr5/t0;

    new-instance v1, Lr5/t0;

    const/4 v2, 0x1

    const-string v4, "@class"

    const-string v5, "CLASS"

    invoke-direct {v1, v5, v2, v4}, Lr5/t0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr5/t0;->n:Lr5/t0;

    new-instance v2, Lr5/t0;

    const/4 v4, 0x2

    const-string v5, "@c"

    const-string v6, "MINIMAL_CLASS"

    invoke-direct {v2, v6, v4, v5}, Lr5/t0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lr5/t0;->o:Lr5/t0;

    move-object v4, v3

    new-instance v3, Lr5/t0;

    const-string v5, "NAME"

    const/4 v6, 0x3

    const-string v7, "@type"

    invoke-direct {v3, v5, v6, v7}, Lr5/t0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v4

    new-instance v4, Lr5/t0;

    const-string v6, "SIMPLE_NAME"

    const/4 v8, 0x4

    invoke-direct {v4, v6, v8, v7}, Lr5/t0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v6, v5

    new-instance v5, Lr5/t0;

    const-string v7, "DEDUCTION"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lr5/t0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lr5/t0;->p:Lr5/t0;

    move-object v7, v6

    new-instance v6, Lr5/t0;

    const-string v8, "CUSTOM"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lr5/t0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v6}, [Lr5/t0;

    move-result-object v0

    sput-object v0, Lr5/t0;->q:[Lr5/t0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lr5/t0;->l:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/t0;
    .locals 1

    const-class v0, Lr5/t0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/t0;

    return-object p0
.end method

.method public static values()[Lr5/t0;
    .locals 1

    sget-object v0, Lr5/t0;->q:[Lr5/t0;

    invoke-virtual {v0}, [Lr5/t0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/t0;

    return-object v0
.end method

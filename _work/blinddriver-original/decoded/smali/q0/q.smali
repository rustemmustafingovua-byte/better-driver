.class public final enum Lq0/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lq0/q;

.field public static final enum m:Lq0/q;

.field public static final enum n:Lq0/q;

.field public static final enum o:Lq0/q;

.field public static final enum p:Lq0/q;

.field public static final synthetic q:[Lq0/q;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lq0/q;

    const-string v1, "DefaultSpatial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/q;->l:Lq0/q;

    new-instance v1, Lq0/q;

    const-string v2, "FastSpatial"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq0/q;->m:Lq0/q;

    new-instance v2, Lq0/q;

    const-string v3, "SlowSpatial"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lq0/q;

    const-string v4, "DefaultEffects"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq0/q;->n:Lq0/q;

    new-instance v4, Lq0/q;

    const-string v5, "FastEffects"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lq0/q;->o:Lq0/q;

    new-instance v5, Lq0/q;

    const-string v6, "SlowEffects"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lq0/q;->p:Lq0/q;

    filled-new-array/range {v0 .. v5}, [Lq0/q;

    move-result-object v0

    sput-object v0, Lq0/q;->q:[Lq0/q;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq0/q;
    .locals 1

    const-class v0, Lq0/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq0/q;

    return-object p0
.end method

.method public static values()[Lq0/q;
    .locals 1

    sget-object v0, Lq0/q;->q:[Lq0/q;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq0/q;

    return-object v0
.end method

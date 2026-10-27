.class public final enum Lr0/q1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr0/q1;

.field public static final enum m:Lr0/q1;

.field public static final enum n:Lr0/q1;

.field public static final enum o:Lr0/q1;

.field public static final enum p:Lr0/q1;

.field public static final enum q:Lr0/q1;

.field public static final synthetic r:[Lr0/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lr0/q1;

    const-string v1, "ShutDown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr0/q1;->l:Lr0/q1;

    new-instance v1, Lr0/q1;

    const-string v2, "ShuttingDown"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr0/q1;->m:Lr0/q1;

    new-instance v2, Lr0/q1;

    const-string v3, "Inactive"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr0/q1;->n:Lr0/q1;

    new-instance v3, Lr0/q1;

    const-string v4, "InactivePendingWork"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr0/q1;->o:Lr0/q1;

    new-instance v4, Lr0/q1;

    const-string v5, "Idle"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lr0/q1;->p:Lr0/q1;

    new-instance v5, Lr0/q1;

    const-string v6, "PendingWork"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lr0/q1;->q:Lr0/q1;

    filled-new-array/range {v0 .. v5}, [Lr0/q1;

    move-result-object v0

    sput-object v0, Lr0/q1;->r:[Lr0/q1;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr0/q1;
    .locals 1

    const-class v0, Lr0/q1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr0/q1;

    return-object p0
.end method

.method public static values()[Lr0/q1;
    .locals 1

    sget-object v0, Lr0/q1;->r:[Lr0/q1;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr0/q1;

    return-object v0
.end method

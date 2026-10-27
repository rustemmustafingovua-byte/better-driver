.class public final enum Lr0/n0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr0/n0;

.field public static final enum m:Lr0/n0;

.field public static final enum n:Lr0/n0;

.field public static final enum o:Lr0/n0;

.field public static final synthetic p:[Lr0/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lr0/n0;

    const-string v1, "IGNORED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr0/n0;->l:Lr0/n0;

    new-instance v1, Lr0/n0;

    const-string v2, "SCHEDULED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr0/n0;->m:Lr0/n0;

    new-instance v2, Lr0/n0;

    const-string v3, "DEFERRED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr0/n0;->n:Lr0/n0;

    new-instance v3, Lr0/n0;

    const-string v4, "IMMINENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr0/n0;->o:Lr0/n0;

    filled-new-array {v0, v1, v2, v3}, [Lr0/n0;

    move-result-object v0

    sput-object v0, Lr0/n0;->p:[Lr0/n0;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr0/n0;
    .locals 1

    const-class v0, Lr0/n0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr0/n0;

    return-object p0
.end method

.method public static values()[Lr0/n0;
    .locals 1

    sget-object v0, Lr0/n0;->p:[Lr0/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr0/n0;

    return-object v0
.end method

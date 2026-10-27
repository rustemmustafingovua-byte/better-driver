.class public final enum Lnd/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lnd/m;

.field public static final enum m:Lnd/m;

.field public static final enum n:Lnd/m;

.field public static final enum o:Lnd/m;

.field public static final synthetic p:[Lnd/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnd/m;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnd/m;->l:Lnd/m;

    new-instance v1, Lnd/m;

    const-string v2, "RIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnd/m;->m:Lnd/m;

    new-instance v2, Lnd/m;

    const-string v3, "SETTINGS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnd/m;->n:Lnd/m;

    new-instance v3, Lnd/m;

    const-string v4, "TIPS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnd/m;->o:Lnd/m;

    filled-new-array {v0, v1, v2, v3}, [Lnd/m;

    move-result-object v0

    sput-object v0, Lnd/m;->p:[Lnd/m;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnd/m;
    .locals 1

    const-class v0, Lnd/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnd/m;

    return-object p0
.end method

.method public static values()[Lnd/m;
    .locals 1

    sget-object v0, Lnd/m;->p:[Lnd/m;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnd/m;

    return-object v0
.end method

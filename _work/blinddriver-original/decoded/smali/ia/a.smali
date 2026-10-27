.class public final enum Lia/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lia/a;

.field public static final enum m:Lia/a;

.field public static final synthetic n:[Lia/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lia/a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lia/a;->l:Lia/a;

    new-instance v1, Lia/a;

    const-string v2, "ALL_JSON_OBJECTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lia/a;

    const-string v3, "POLYMORPHIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lia/a;->m:Lia/a;

    filled-new-array {v0, v1, v2}, [Lia/a;

    move-result-object v0

    sput-object v0, Lia/a;->n:[Lia/a;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lia/a;
    .locals 1

    const-class v0, Lia/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lia/a;

    return-object p0
.end method

.method public static values()[Lia/a;
    .locals 1

    sget-object v0, Lia/a;->n:[Lia/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lia/a;

    return-object v0
.end method

.class public final enum Lld/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic p:[Lld/j;

.field public static final synthetic q:Lb9/b;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Z

.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lld/j;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, "CITY_WEEKDAY"

    const-string v3, "city_weekday"

    const-string v4, "\u041c\u0456\u0441\u0442\u043e \u00b7 \u0431\u0443\u0434\u043d\u0456\u0439"

    invoke-direct/range {v0 .. v6}, Lld/j;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lld/j;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v2, 0x1

    const-string v3, "CITY_WEEKEND"

    const-string v4, "city_weekend"

    const-string v5, "\u041c\u0456\u0441\u0442\u043e \u00b7 \u0432\u0438\u0445\u0456\u0434\u043d\u0438\u0439"

    invoke-direct/range {v1 .. v7}, Lld/j;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v2, Lld/j;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x2

    const-string v4, "HWY_WEEKDAY"

    const-string v5, "hwy_weekday"

    const-string v6, "\u0422\u0440\u0430\u0441\u0430 \u00b7 \u0431\u0443\u0434\u043d\u0456\u0439"

    invoke-direct/range {v2 .. v8}, Lld/j;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v3, Lld/j;

    const/4 v9, 0x1

    const/4 v4, 0x3

    const-string v5, "HWY_WEEKEND"

    const-string v6, "hwy_weekend"

    const-string v7, "\u0422\u0440\u0430\u0441\u0430 \u00b7 \u0432\u0438\u0445\u0456\u0434\u043d\u0438\u0439"

    invoke-direct/range {v3 .. v9}, Lld/j;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    filled-new-array {v0, v1, v2, v3}, [Lld/j;

    move-result-object v0

    sput-object v0, Lld/j;->p:[Lld/j;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    move-result-object v0

    sput-object v0, Lld/j;->q:Lb9/b;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lld/j;->l:Ljava/lang/String;

    iput-object p4, p0, Lld/j;->m:Ljava/lang/String;

    iput-boolean p5, p0, Lld/j;->n:Z

    iput-boolean p6, p0, Lld/j;->o:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lld/j;
    .locals 1

    const-class v0, Lld/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lld/j;

    return-object p0
.end method

.method public static values()[Lld/j;
    .locals 1

    sget-object v0, Lld/j;->p:[Lld/j;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lld/j;

    return-object v0
.end method

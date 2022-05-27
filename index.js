export const applyCustomCode = (externalCodeSetup: any) => {
	// call custom code api here
	const onCourseSeeAllClick = (category) => {
        props.navigation.dispatch(
            NavigationActions.navigate({
                routeName: "CoursesCategorySingleScreen",
                params: {
                    title: category.name,
                    categoryId: category.id
                }
            })
        );
    };
};

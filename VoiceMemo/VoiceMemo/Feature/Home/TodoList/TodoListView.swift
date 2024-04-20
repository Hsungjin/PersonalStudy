//
//  TodoListView.swift
//  VoiceMemo
//
//  Created by 황성진 on 3/12/24.
//

import SwiftUI

struct TodoListView: View {
    @EnvironmentObject private var pathModel: PathModel
    @EnvironmentObject private var todoListViewModel: TodoListViewModel
    
    var body: some View {
        ZStack {
            // 투드 셀 리스트
            VStack {
                if !todoListViewModel.todos.isEmpty {
                    CustomNavigationBar(isDisplayLeftBtn: false, rightBtnAction: {
                        todoListViewModel.navigationRightBtnTapped()
                    }, rightBtnType: todoListViewModel.navigationBarRightBtnMode)
                } else {
                    Spacer()
                        .frame(height: 30)
                }
                
                TitleView()
                
                AnnouncementView()
            }
        }
    }
}

// MARK: - TodoList 타이틀 뷰
private struct TitleView: View {
    @EnvironmentObject private var todoListViewModel: TodoListViewModel
    
    fileprivate var body: some View {
        HStack {
            if todoListViewModel.todos.isEmpty {
                Text("To do list를\n추가해 보세요")
            } else {
                Text("To do list \(todoListViewModel.todos.count)개가\n있습니다")
            }
            
            Spacer()
        }
        .font(.system(size: 30, weight: .bold))
        .padding(.leading, 20)
    }
}

// MARK: - TodoList 안내뷰
private struct AnnouncementView: View {
    fileprivate var body: some View {
        VStack(spacing: 15) {
            Spacer()
            
            Image("pencil")
                .renderingMode(.template)
            Text("\"매일 아침 5시 운동하자!\"")
            Text("\"내일 8시 수강신청하나!\"")
            Text("\"1시반 점심약속 리마인드 해보자!\"")
            
            Spacer()
        }
        .font(.system(size: 16))
        .foregroundStyle(.customGray2)
    }
}

// MARK: - TodoList 컨텐츠 뷰
private struct TodoListContentView: View {
    @EnvironmentObject private var todolistViewModel: TodoListViewModel
    
    fileprivate var body: some View {
        VStack {
            HStack {
                Text("할일 목록")
                    .font(.system(size: 16, weight: .bold))
                    .padding(.leading, 20)
                
                Spacer()
            }
            
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.customGray0)
                        .frame(height: 1)
                    
                    ForEach(todolistViewModel.todos, id: \.self) { todo in
                        // TODO: - TODO 셀 뷰 todo 넣어서 뷰 호출
                    }
                }
            }
        }
    }
}

// MARK: - Todo 셀 뷰
private struct TodoCellView: View {
    @EnvironmentObject private var todolistViewModel: TodoListViewModel
    @State private var isRemoveSelected: Bool
    private var todo: Todo
    
    fileprivate init(
        isRemoveSelected: Bool = false,
        todo: Todo
    ) {
        _isRemoveSelected = State(initialValue: isRemoveSelected)
        self.todo = todo
    }
    
    fileprivate var body: some View {
        VStack(spacing: 20) {
            HStack {
                
            }
        }
    }
}

#Preview {
    TodoListView()
        .environmentObject(PathModel())
        .environmentObject(TodoListViewModel())
}
